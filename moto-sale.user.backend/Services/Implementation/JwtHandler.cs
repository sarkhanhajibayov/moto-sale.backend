﻿using motosale.user.backend.DTO.HelperModels;
using motosale.user.backend.DTO.HelperModels.Jwt;
using motosale.user.backend.Extensions;
using motosale.user.backend.Models;
using motosale.user.backend.Services.Interface;
using Microsoft.IdentityModel.Tokens;
using System.IdentityModel.Tokens.Jwt;
using System.Security.Claims;
using System.Text;

namespace motosale.user.backend.Services.Implementation
{
    public class JwtHandler: IJwtHandler
    {
        AppConfiguration config = new AppConfiguration();
        public JwtResponse CreateToken(JwtCustomClaims model)
        {
            var now = DateTime.Now;
            var unixTimeSeconds = new DateTimeOffset(now).ToUnixTimeSeconds();
            var secretKey = new SymmetricSecurityKey(Encoding.UTF8.GetBytes(config.JWTSecret));
            var signinCredentials = new SigningCredentials(secretKey, SecurityAlgorithms.HmacSha256);
            var tokeOptions = new JwtSecurityToken(
                claims: new Claim[] {
                    new Claim(nameof(model.UserId), model.UserId.ToString()),
                    new Claim(nameof(model.UserName), model.UserName)
                },
                expires: DateTime.Now.AddHours(8),
                signingCredentials: signinCredentials
            );
            var tokenString = new JwtSecurityTokenHandler().WriteToken(tokeOptions);
            JwtResponse jwtresponse = new JwtResponse()
            {
                Token = tokenString,
                ExpiresAt = unixTimeSeconds
            };
            return jwtresponse;
        }
    }
}

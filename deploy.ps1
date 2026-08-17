#!/usr/bin/env pwsh
<#
.SYNOPSIS
    Script de deploy automático para Lucia Figuerêdo website
.DESCRIPTION
    Faz push no GitHub e configura deploy no Vercel automaticamente
.PARAMETER GitHubUsername
    Seu username do GitHub
.EXAMPLE
    .\deploy.ps1 -GitHubUsername "seu-usuario"
#>

param(
    [Parameter(Mandatory=$true)]
    [string]$GitHubUsername
)

$repoName = "lucia-figueredo-website"
$projectPath = Split-Path -Parent $MyInvocation.MyCommand.Path

Write-Host "🚀 Deploy Automático - Lucia Figuerêdo Website" -ForegroundColor Cyan
Write-Host "================================================" -ForegroundColor Cyan
Write-Host ""

# Step 1: Verificar Git
Write-Host "📦 Step 1: Verificando Git..." -ForegroundColor Yellow
if (-not (git --version 2>$null)) {
    Write-Host "❌ Git não encontrado! Instale em https://git-scm.com" -ForegroundColor Red
    exit 1
}
Write-Host "✅ Git encontrado" -ForegroundColor Green
Write-Host ""

# Step 2: Configurar remoto
Write-Host "🔗 Step 2: Configurando repositório remoto..." -ForegroundColor Yellow
cd $projectPath
$remoteUrl = "https://github.com/$GitHubUsername/$repoName.git"

git remote remove origin 2>$null
git remote add origin $remoteUrl
Write-Host "✅ Remoto configurado: $remoteUrl" -ForegroundColor Green
Write-Host ""

# Step 3: Push para GitHub
Write-Host "📤 Step 3: Fazendo push para GitHub..." -ForegroundColor Yellow
git branch -M main 2>$null
try {
    git push -u origin main --force
    Write-Host "✅ Push concluído com sucesso!" -ForegroundColor Green
} catch {
    Write-Host "⚠️  Se pedir credenciais, use seu GitHub username e um Personal Access Token" -ForegroundColor Yellow
    Write-Host "📌 Crie um token em: https://github.com/settings/tokens/new" -ForegroundColor Yellow
    Write-Host "❌ Erro no push: $_" -ForegroundColor Red
    exit 1
}
Write-Host ""

# Step 4: Instruções Vercel
Write-Host "🎯 Step 4: Deploy no Vercel" -ForegroundColor Yellow
Write-Host ""
Write-Host "Próximos passos:" -ForegroundColor Cyan
Write-Host "1. Abra: https://vercel.com/new" -ForegroundColor White
Write-Host "2. Clique em 'Import Git Repository'" -ForegroundColor White
Write-Host "3. Selecione: $repoName" -ForegroundColor White
Write-Host "4. Em 'Root Directory', mude para: prototipo" -ForegroundColor White
Write-Host "5. Clique em 'Deploy'" -ForegroundColor White
Write-Host ""

# Step 5: Resumo
Write-Host "================================================" -ForegroundColor Cyan
Write-Host "✅ SETUP CONCLUÍDO!" -ForegroundColor Green
Write-Host "================================================" -ForegroundColor Cyan
Write-Host ""
Write-Host "📊 Resumo:" -ForegroundColor Cyan
Write-Host "• Repositório: https://github.com/$GitHubUsername/$repoName" -ForegroundColor White
Write-Host "• Branch: main (pushed)" -ForegroundColor White
Write-Host "• Próximo: Deploy no Vercel → https://vercel.com/new" -ForegroundColor White
Write-Host ""
Write-Host "🎨 Site ao vivo em: lucia-figueredo-website.vercel.app" -ForegroundColor Green
Write-Host ""

# Abrir no navegador
$response = Read-Host "Abrir GitHub e Vercel no navegador? (s/n)"
if ($response -eq "s") {
    Start-Process "https://github.com/$GitHubUsername/$repoName"
    Start-Process "https://vercel.com/new"
}

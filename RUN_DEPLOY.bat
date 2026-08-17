@echo off
setlocal enabledelayedexpansion

echo.
echo ==========================================
echo  Lucia Figueredo - Deploy Automatico
echo ==========================================
echo.

cd /d "%~dp0"

if "%1"=="" (
    echo.
    echo ⚠️  Uso: RUN_DEPLOY.bat seu-usuario-github
    echo.
    echo Exemplo:
    echo    RUN_DEPLOY.bat marcrisreitz
    echo.
    echo Nao tem usuario GitHub ainda?
    echo    https://github.com/signup
    echo.
    pause
    exit /b 1
)

set GITHUB_USER=%1
set REPO_NAME=lucia-figueredo-website

echo.
echo 📦 Configurando repositorio...
git remote remove origin 2>nul
git remote add origin https://github.com/%GITHUB_USER%/%REPO_NAME%.git

echo.
echo 📤 Fazendo push para GitHub...
echo.
echo Voce sera solicitado a autenticar. Opcoes:
echo   1. Browser OAuth (recomendado) - vai abrir uma janela
echo   2. Token de acesso: criar em https://github.com/settings/tokens/new
echo.

git branch -M main
git push -u origin main --force

if errorlevel 1 (
    echo.
    echo ❌ Erro ao fazer push
    echo.
    echo Se a autenticacao falhou, tente:
    echo   1. git config --global credential.helper store
    echo   2. Execute novamente este arquivo
    echo.
    pause
    exit /b 1
)

echo.
echo ==========================================
echo  ✅ REPOSITORIO ENVIADO COM SUCESSO!
echo ==========================================
echo.
echo 🌐 Seu repositorio:
echo    https://github.com/%GITHUB_USER%/%REPO_NAME%
echo.
echo 🚀 Proxima etapa - Deploy no Vercel:
echo    https://vercel.com/new
echo.
echo Passos:
echo   1. Clique em "Import Git Repository"
echo   2. Conecte sua conta GitHub
echo   3. Selecione: lucia-figueredo-website
echo   4. Root Directory: mude para "prototipo"
echo   5. Clique em "Deploy"
echo.
echo ==========================================
echo.

pause

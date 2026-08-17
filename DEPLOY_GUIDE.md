# 🚀 Guia Rápido de Deploy - Lucia Figuerêdo Website

## ⏱️ Tempo estimado: 5 minutos

---

## **PASSO 1: Criar Repositório no GitHub** (2 min)

### Opção A: Automática (Recomendado)
[🔗 Clique aqui para criar repo automaticamente](https://github.com/new?name=lucia-figueredo-website&description=Website+de+L%C3%BAcia+Figuer%C3%AAdo+-+Autora+%26+Mentora&public=true)

### Opção B: Manual
1. Vá para [github.com/new](https://github.com/new)
2. Nome: `lucia-figueredo-website`
3. Descrição: `Website de Lúcia Figuerêdo - Autora & Mentora`
4. Marque "Public"
5. Clique em "Create repository"

---

## **PASSO 2: Fazer Push do Código** (2 min)

Abra **PowerShell** e execute:

```powershell
cd "C:\Users\marci\OneDrive\Área de Trabalho\MENTORADAS E AFINS\Lucia\02-Site"
git remote add origin https://github.com/SEU_USERNAME/lucia-figueredo-website.git
git branch -M main
git push -u origin main
```

> ⚠️ Substitua `SEU_USERNAME` pelo seu usuário do GitHub

**Se pedir credenciais:**
- Use seu GitHub username
- Para senha, use um **Personal Access Token** (crie em [github.com/settings/tokens](https://github.com/settings/tokens/new))

---

## **PASSO 3: Deploy no Vercel** (1 min)

[🎯 Clique aqui para importar no Vercel](https://vercel.com/new)

### Configuração:
1. Clique em "Import Git Repository"
2. Conecte sua conta GitHub
3. Selecione o repositório `lucia-figueredo-website`
4. **Root Directory:** altere para `prototipo`
5. Clique em "Deploy"

---

## **PASSO 4: Seu Site Está Online!** ✅

Após o deploy, você terá um domínio automático:
- `lucia-figueredo-website.vercel.app`
- Ou configure um domínio customizado em Vercel

---

## 📱 Links Importantes

| Serviço | Link |
|---------|------|
| GitHub Repo | `https://github.com/SEU_USERNAME/lucia-figueredo-website` |
| Vercel Dashboard | [vercel.com/dashboard](https://vercel.com/dashboard) |
| Instagram Lucia | [@luciaalmeida_1](https://instagram.com/luciaalmeida_1) |

---

## 🔧 Troubleshooting

### Git push falha com "fatal: unable to access"
→ Crie um Personal Access Token em [github.com/settings/tokens/new](https://github.com/settings/tokens/new)
→ Use o token como senha

### Vercel não encontra os arquivos
→ Confirme que "Root Directory" está configurado como `prototipo`

### Site carrega mas imagens não aparecem
→ Verifique se a pasta `prototipo/assets/` foi enviada para o GitHub

---

## 📞 Próximos Passos

Após o deploy:
- [ ] Teste o site em dispositivos móveis
- [ ] Verifique os links dos livros (Amazon + Uiclap)
- [ ] Teste cliques para Instagram
- [ ] Configure Analytics (Google Analytics) se desejar

---

**Pronto para lançar! 🚀**

# Checklist de materiais — site animado (estilo Socorro Acioli) para Lúcia

Site de referência: https://socorroacioli.com.br/ (feito em Framer). Este checklist é o que a Lúcia (ou você) precisa reunir para eu construir uma versão com o mesmo nível de movimento, usando a identidade dela.

## 1. O que é técnico (não precisa de material da Lúcia)

Não existe um "plugin" ou skill pronta para clonar um site Framer — o efeito é construído com código (HTML/CSS/JS + a biblioteca GSAP, carregada via CDN, com o plugin ScrollTrigger). Isso eu desenvolvo diretamente, sem depender de mais nada da Lúcia:

- **Revelação ao rolar a página** (textos/cards que sobem e aparecem suavemente conforme o scroll) — GSAP ScrollTrigger.
- **Faixa de imagens em loop infinito** (a fileira de fotos que desliza sozinha no topo do site da Socorro) — animação CSS/JS de marquee.
- **Efeito "ponteiro do curso"** (ao passar o mouse em cada item da lista de aulas, uma imagem flutuante segue o cursor e troca conforme o item) — JS de mousemove + troca de imagem. É o efeito mais trabalhoso, mas replicável.
- **Scroll suave/elástico** e **cards fixos (sticky)** enquanto o conteúdo ao lado rola.
- **Micro-interações em botões** (seta que desliza, cor que inverte no hover).
- **Ilustração flutuando** (os pássaros do site dela) — no caso da Lúcia, sugiro folhas/galho (já usei um no rodapé), para condizer com "Raízes que Ficam".

Importante: vou me inspirar fortemente nesses efeitos, não clonar pixel a pixel — além de ser tecnicamente melhor (fontes do Framer são proprietárias, por exemplo), replicar 100% o layout de outra autora não é o ideal para a identidade própria da Lúcia.

## 2. O que preciso que a Lúcia (ou você) entregue

| Item | Quantidade | Detalhes |
|---|---|---|
| Fotos para a faixa animada do topo (marquee) | 6 a 10 fotos | Variadas: retratos, foto com os livros, bastidores escrevendo, família/vida pessoal, evento/palestra se houver. Boa resolução (mín. 1600px no lado maior). Hoje só tenho ~4 fotos reais aproveitáveis — precisa de mais. |
| Fotos de bastidor extras | 3 a 5 fotos | Pro mosaico do Instagram e outras seções — já tenho 2 (escrevendo, citação de fé), pode mandar mais no mesmo estilo. |
| Conteúdo estruturado da mentoria "Raízes que Ficam" (Método SER) | 1 texto | Hoje só existe a arte de divulgação. Preciso: o que significa cada letra do SER, descrição curta de cada etapa, formato (ao vivo/gravado), datas de turma (se houver), plataforma (Meet/Zoom/WhatsApp), investimento e como se inscrever. |
| 1 imagem por etapa do Método SER | 3 imagens | Só faz sentido reproduzir o bloco "aula 1, aula 2, aula 3..." do site de referência se tivermos uma imagem pra cada etapa. |
| Depoimentos com foto ou vídeo (opcional) | quantas houver | Eleva a prova social além do texto das avaliações da Amazon que já usei. |
| Vídeo curto dela (opcional) | 1 vídeo de 15-30s | Pra usar como fundo do hero ou de alguma seção — você já tem um vídeo de WhatsApp na pasta, posso testar com ele. |
| Logo/assinatura pessoal (opcional) | 1 arquivo | Hoje o "logo" dela no site é só o nome em texto. Se quiser algo visual (como o logo-lockup da Socorro), precisa ser criado ou fornecido. |
| E-mail oficial de contato | 1 informação | Hoje uso um e-mail placeholder no rodapé. |
| Link do Hotmart do ebook | 1 link | Mencionado no plano de viralização, ainda não recebi. |

## 3. Prioridade sugerida

1. Fotos extras pro marquee (maior impacto visual, menor esforço da Lúcia).
2. Conteúdo estruturado do Método SER (destrava o bloco de "etapas" com efeito de ponteiro).
3. Resto é incremental — pode entrar depois.

## 4. Tamanhos e tipos de imagem por espaço do site

Medidas em pixels (largura × altura). "Já preenchido" = já tem uma foto real nesse espaço na versão atual; "Falta" = ainda preciso receber.

| Espaço no site | Quantas fotos | Orientação | Proporção | Resolução mínima | Formato | Status |
|---|---|---|---|---|---|---|
| Hero — colagem, tiles altos | 2 | Retrato (vertical) | ~3:4 a 2:3 | 1200×1600px | JPG/PNG | Já preenchido |
| Hero — colagem, tiles pequenos | 2 | Quadrada ou retrato leve | ~4:5 a 1:1 | 900×900px | JPG/PNG | Já preenchido |
| Sobre a autora — foto ao lado do card escuro | 1 | Retrato (vertical) | ~4:5 | 1000×1250px | JPG/PNG | Já preenchido |
| Seção "imagem conceitual" (2 fotos lado a lado, respiro visual) | 2 | Paisagem ou quadrada | ~4:3 a 1:1 | 1200×900px | JPG/PNG | Já preenchido (reaproveitadas) |
| Trajetória — foto fixa (sticky) ao lado dos 3 cards | 1 | Retrato (vertical) | ~3:4 | 1000×1300px | JPG/PNG | Já preenchido |
| Capas dos livros | 2 | Retrato (capa de livro) | 2:3 | 1000×1500px | JPG | Já preenchido |
| Selo da mentoria "Raízes que Ficam" | 1 | Quadrada | 1:1 | 800×800px | JPG/PNG | Já preenchido |
| CTA final — fotos estilo polaroid (2 sobrepostas) | 2 | Quadrada | 1:1 | 800×800px | JPG/PNG | Já preenchido (reaproveitadas) |
| Mosaico do Instagram | 4 fotos + 1 bloco de cor | Mista (quadrada funciona melhor) | 1:1 a 4:3 | 800×800px | JPG/PNG | Já preenchido (reaproveitadas) |
| Faixa de imagens em loop (marquee) — se quiser essa seção extra | 6 a 10 | Mista, mas todas com a mesma proporção entre si | 4:5 (recomendado) | 1200×1500px | JPG/PNG | Falta |
| 1 imagem por etapa do Método SER (S · E · R) | 3 | Quadrada ou retrato leve | 1:1 a 4:5 | 900×900px | JPG/PNG | Falta |

**Notas gerais:**
- Resolução mínima = o menor tamanho aceitável; maior é sempre melhor (eu redimensiono pra web, nunca aumento uma foto pequena sem perder qualidade).
- "Já preenchido (reaproveitadas)" significa que usei fotos que já existem na pasta em mais de um lugar — funciona, mas fotos exclusivas pra cada espaço deixam o site menos repetitivo.
- Evite fotos com marca d'água (tem uma na pasta com "AI" no canto — não usei por isso).
- Fundo neutro ou levemente desfocado ajuda muito nos retratos, porque as fotos são cortadas (crop) automaticamente pelo site pra caber no espaço.

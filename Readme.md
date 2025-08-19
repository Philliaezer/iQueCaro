# Como gerar um ipa sem assinatura da Apple Store com esse projeto

1. Veja se o projeto compila e roda normalmente.
2. Faça as atualizações no seu Xcode conforme vídeo abaixo:
   https://youtu.be/SXRimW23AjI?si=iIxLAr2zVKi9Invw
3. Lá em cima, em "Product", cique em "Destination", depois em "iPhone --" troca o -- pela versão que desejar, exemplo "iPhone 14.
4. Ainda em "Product", clique em "Schemes", depois em "Edit Schemes"
5. Tudo o que estiver "Debug" coloque para "Release", e depois feche.
5. Clique em "Product" denovo, depois em "Build", depois em "Archive"
7. Selecione com botão direito o arquivo, depois clique em "Abrir com Finder"
8. Crie uma pasta, jogue o arquivo lá, comprima, e troque o .zip por .ipa
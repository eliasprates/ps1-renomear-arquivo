    
    $localDosArquivos = 'D:\ps\'
    $extensaoDoArquivo = '.jpg'

    $nomesAtuais = [string[]]$arrayFromFile = Get-Content -Path ($localDosArquivos + 'nomesAtuais.txt')
    $nomesNovos = [string[]]$arrayFromFile = Get-Content -Path ($localDosArquivos + 'nomesNovos.txt')   
    
    $qtd = ($nomesNovos.Length)
    
    for ($i = 0; $i -le $qtd ; $i++)
        {

            

            $nomeAtual = $nomesAtuais[$i] + $extensaoDoArquivo
            $nomeNovo = $nomesNovos[$i] + $extensaoDoArquivo

                Write-Output ("`n" + $nomeAtual + " | " + $nomeNovo)
            
            Rename-Item -Path ($localDosArquivos + $nomeAtual) -NewName $nomeNovo;
        }
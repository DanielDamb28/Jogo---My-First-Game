
// Project: Game 
// Created: 2022-05-16

// show all errors
SetErrorMode(2)

// set window properties
SetWindowTitle( "Game" )
SetWindowSize( 1024, 768, 0 )
SetWindowAllowResize( 1 ) // allow the user to resize the window

// set display properties
SetVirtualResolution( 1024, 768 ) // doesn't have to match the window
SetOrientationAllowed( 1, 1, 1, 1 ) // allow both portrait and landscape on mobile devices
SetSyncRate( 30, 0 ) // 30fps instead of 60 to save battery
SetScissor( 0,0,0,0 ) // use the maximum available screen space, no black borders
UseNewDefaultFonts( 1 ) // since version 2.0.22 we can use nicer default fonts

//VARIAVEIS

#insert "Variaveis.agc"

//Fundo do Jogo
LoadImage(2, "fundo.png")
CreateSprite(2, 2)



#insert "Portas.agc"

#insert "Computadores.agc"

#insert "Perguntas.agc"

//Tela final

loadimage(5, "insta.png")
CreateSprite(5, 5)
SetSpriteSize(5, 15, 15)
SetSpritePosition(5, 945, 565)

loadimage(70, "criador_imagens.png")
CreateSprite(70, 70)
SetSpriteSize(70, 150, 100)
SetSpritePosition(70, 900, 562)

loadimage(71, "desenvolvedor.png")
CreateSprite(71, 71)
SetSpriteSize(71, 270, 180)
SetSpritePosition(71, 790, 690)


//Personagem Principal do jogo
LoadImage(3, "personagem.png")
CreateSprite(3, 3)
SetSpriteAnimation(3, 30, 64, 10)
SetSpritePosition(3,x,y)

n = 0

//Tela Inicial
loadimage(110, "biblio.jpg")
CreateSprite(110, 110)
SetSpriteSize(110, 260, 200)
SetSpritePosition(110, 3, 3)
loadimage(9, "tela_inicial.png")
CreateSprite(9, 9)
SetSpritePosition(9, 0, 0)
loadimage(7, "jogar.png")
CreateSprite(8, 7)
SetSpriteSize(8, 150, 50)
SetSpritePosition(8, 80, 30)
loadimage(6, "tutorial.png")
CreateSprite(7, 6)
SetSpriteSize(7, 260, 90)
SetSpritePosition(7, 3, 104)

portaSom = LoadSound("porta_abrindo.wav")

function texto()
	StartTextInput()
endfunction

do
	
	//Posicionamento da camera
	SetViewZoom( zoom)
	if x >= 100 and x =< 855
		SetViewOffset(x - 100, y - 110)
	else
		if x < 100
			SetViewOffset(0, y - 110)
		else
			SetViewOffset(755, y - 110)
		endif
	endif
	
	//Guarda palavra digitada em uma variavel
	
	if GetTextInputCompleted ( ) = 1
		testePalavra = GetTextInput ( )
	endif
	
	//Tela Inicial
	if(GetPointerX() > 250 and GetPointerX() < 780 and GetPointerY() > 125 and GetPointery() < 270)
		if getpointerpressed()=1
            DeleteSprite(9)
            DeleteSprite(8)
            DeleteSprite(7)
            DeleteSprite(110)
            porta = 230
        endif
	endif
		
	
	
	
	//Testes de senhas e animação de portas
	
	
	
	//Level1
	
	//Testa colisao com a computador1
	if GetSpriteCollision(3, 30) = 1
		print("Aperte E para abrir o Computador")
		
		
		if GetRawKeyReleased(69) = 1
			
			texto()
		endif
	
	endif
	
    
    //TestaPrimeiraPorta
    if (testePalavra = palavraChave1)
		porta = porta2
		if abrePorta1 = 0
			abrePorta1 = 1
		endif
	endif
	
	//Abre a porta1
	if abrePorta1 = 1
		PlaySound(portaSom)
		playSprite(10, 1 , 0, 1, 2)
		abrePorta1 = 2
	endif
	
	//FimLevel1
	
	
	
	//Level2
	
	//Testa colisao com a computador2
	if GetSpriteCollision(3, 31) = 1
		print("Aperte E para abrir o Computador")
		
		
		if GetRawKeyReleased(69) = 1
			
			texto()
		endif
		
	endif
	
    //TestaSegundaPorta
    if (testePalavra = palavraChave2)
		porta = porta3
		if abrePorta2 = 0
			abrePorta2 = 1
		endif
	endif
	
	//Abre a porta2
	if abrePorta2 = 1
		PlaySound(portaSom)
		playSprite(11, 1 , 0, 1, 2)
		abrePorta2 = 2
	endif
	
	//FimLevel2

	
	
	//Level3
	
	//Testa colisao com a computador3
	if GetSpriteCollision(3, 32) = 1
		print("Aperte E para abrir o Computador")
		
		
		if GetRawKeyReleased(69) = 1
			
			texto()
		endif
		
	endif
	
    
    //TestaTerceiraPorta
    if (testePalavra = palavraChave3)
		porta = porta4
		if abrePorta3 = 0
			abrePorta3 = 1
		endif
	endif
	
	//Abre a porta3
	if abrePorta3 = 1
		PlaySound(portaSom)
		playSprite(12, 1 , 0, 1, 2)
		abrePorta3 = 2
	endif
	
	//FimLevel3
	
	
	
	//Level4
	//Testa colisao com a computador4
	if GetSpriteCollision(3, 33) = 1
		print("Aperte E para abrir o Computador")
		
		
		if GetRawKeyReleased(69) = 1
			texto()
		endif
		
	endif
    
    //TestaQuartaPorta
    if (testePalavra = palavraChave4)
		if abrePorta4 = 0
			abrePorta4 = 1
		endif
	endif
	
	//Abre a porta4
	if abrePorta4 = 1
		PlaySound(portaSom)
		playSprite(13, 1 , 0, 1, 2)
		abrePorta4 = 2
	endif
	
	
	
	//Level5
	//Testa colisao com a computador5
	if GetSpriteCollision(3, 34) = 1
		print("Aperte E para abrir o Computador")
		
		
		if GetRawKeyReleased(69) = 1
			texto()
		endif
		
	endif
    
    //TestaQuintaPorta
    if (testePalavra = palavraChave5)
		portasAndar2 = porta6
		if abrePorta5 = 0
			abrePorta5 = 1
		endif
	endif
	
	//Abre a porta5
	if abrePorta5 = 1
		PlaySound(portaSom)
		playSprite(14, 1 , 0, 1, 2)
		abrePorta5 = 2
	endif
	
	
	
	//Level6
	//Testa colisao com a computador6
	if GetSpriteCollision(3, 35) = 1
		print("Aperte E para abrir o Computador")
		
		
		if GetRawKeyReleased(69) = 1
			texto()
		endif
		
	endif
    
    //TestaSextaPorta
    if (testePalavra = palavraChave6)
		portasAndar2 = porta7
		if abrePorta6 = 0
			abrePorta6 = 1
		endif
	endif
	
	//Abre a porta6
	if abrePorta6 = 1
		PlaySound(portaSom)
		playSprite(15, 1 , 0, 1, 2)
		abrePorta6 = 2
	endif
	
	
	
	//Level7
	//Testa colisao com a computador7
	if GetSpriteCollision(3, 36) = 1
		print("Aperte E para abrir o Computador")
		
		
		if GetRawKeyReleased(69) = 1
			texto()
		endif
		
	endif
	
    //TestaSetimaPorta
    if (testePalavra = palavraChave7)
		portasAndar2 = porta8
		if abrePorta7 = 0
			abrePorta7 = 1
		endif
	endif
	
	//Abre a porta7
	if abrePorta7 = 1
		PlaySound(portaSom)
		playSprite(16, 1 , 0, 1, 2)
		abrePorta7 = 2
	endif
	
	
	
	//Level8
	//Testa colisao com a computador8
	if GetSpriteCollision(3, 37) = 1
		print("Aperte E para abrir o Computador")
		
		
		if GetRawKeyReleased(69) = 1
			texto()
		endif
		
	endif
	
    //TestaOitavaPorta
    if (testePalavra = palavraChave8)
		if abrePorta8 = 0
			abrePorta8 = 1
		endif
	endif
	
	//Abre a porta8
	if abrePorta8 = 1
		PlaySound(portaSom)
		playSprite(17, 1 , 0, 1, 2)
		abrePorta8 = 2
	endif
	
	
	
	//Level9
	//Testa colisao com a computador9
	if GetSpriteCollision(3, 38) = 1
		print("Aperte E para abrir o Computador")
		
		
		if GetRawKeyReleased(69) = 1
			texto()
		endif
		
	endif
    
    //TestaNonaPorta
    if (testePalavra = palavraChave9)
		portasAndar3 = porta10
		if abrePorta9 = 0
			abrePorta9 = 1
		endif
	endif
	
	//Abre a porta9
	if abrePorta9 = 1
		PlaySound(portaSom)
		playSprite(18, 1 , 0, 1, 2)
		abrePorta9 = 2
	endif
	
	
	
	//Level10
	//Testa colisao com a computador10
	if GetSpriteCollision(3, 39) = 1
		print("Aperte E para abrir o Computador")
		
		
		if GetRawKeyReleased(69) = 1
			texto()
		endif
		
	endif
	
    //TestaDecimaPorta
    if (testePalavra = palavraChave10)
		portasAndar3 = porta11
		if abrePorta10 = 0
			abrePorta10 = 1
		endif
	endif
	
	//Abre a porta10
	if abrePorta10 = 1
		PlaySound(portaSom)
		playSprite(19, 1 , 0, 1, 2)
		abrePorta10 = 2
	endif
	
	
	
	//Level11
	//Testa colisao com a computador11
	if GetSpriteCollision(3, 40) = 1
		print("Aperte E para abrir o Computador")
		
		
		if GetRawKeyReleased(69) = 1
			texto()
		endif
		
	endif
    
    //TestaDecimaPrimeiraPorta
    if (testePalavra = palavraChave11)
		portasAndar3 = porta12
		if abrePorta11 = 0
			abrePorta11 = 1
		endif
	endif
	
	//Abre a porta11
	if abrePorta11 = 1
		PlaySound(portaSom)
		playSprite(20, 1 , 0, 1, 2)
		abrePorta11 = 2
	endif
	
	
	//Level12
	//Testa colisao com a computador12
	if GetSpriteCollision(3, 41) = 1
		print("Aperte E para abrir o Computador")
		
		
		if GetRawKeyReleased(69) = 1
			texto()
		endif
		
	endif
    
    //TestaDecimaSegundaPorta
    if (testePalavra = palavraChave12)
		if abrePorta12 = 0
			abrePorta12 = 1
		endif
	endif
	
	//Abre a porta12
	if abrePorta12 = 1
		PlaySound(portaSom)
		playSprite(21, 1 , 0, 1, 2)
		abrePorta12 = 2
	endif
	
	
	
	
	
	
	
	//Testes de movimentação do personagem
	
    
    //Testa aonde nao tem chao no primeiro andar
	if x > 910 and x < 955 and y < 290 and abrePorta4 = 2
		y = y + 5
		portasAndar2 = porta5
		movimento2 = 0
		movimento = 0
		SetSpritePosition(3,x , y)
			
	endif
	
	//Testa aonde nao tem chao no segundo andar
	if x> 25 and x < 70 and y > 285 and y < 466 and abrePorta8 = 2
		y = y + 5
		portasAndar3 = porta9
		movimento2 = 0
		movimento = 0
		SetSpritePosition(3,x , y)
	endif
	
	//Testa aonde nao tem chao no terceiro andar
	if x > 910 and x < 955 and y > 460 and y < 664 and abrePorta12 = 2
		final = 720
		movimento2 = 0
		movimento = 0
		y = y + 5
		SetSpritePosition(3,x , y)
	endif
	
	
	
	//Testa Se personagem pode ser movimentar
    if y <131 or (y > 289 and y < 291) or (y > 469 and y < 471) or y > 664
		
		//Testa se chegou no limite da direita
		if x < 995 and x < porta and x < portasAndar3
			//Movimenta o personagem para a direita
			if GetRawKeyState(39) = 1
				x = x + 5
				movimento = 1
				SetSpritePosition(3,x , y)
			endif
		endif
		if GetRawKeyReleased(39)
			movimento = 0
		endif
		
		if(movimento = 1)
		if n < 2
				playsprite(3, 5, 0, m, 5)
				n = n + 1
			else
				m = m + 1
				n = 0
				if m = 5
					m = 2
				endif
			endif
		endif
		
		
		
		//Testa se chegou no limite da esquerda
		if x > 0 and x > portasAndar2 and x > final
			//Movimenta personagem para a esquerda
			if GetRawKeyState(37) = 1
				x = x - 5
				SetSpritePosition(3,x , y)
				movimento2 = 1
				PlaySprite(3, 6, 0, 7, 10)
			endif
		endif
		
		if GetRawKeyReleased(37)
			movimento2 = 0
		endif
		
		if movimento2 = 1
			if n < 2
				playsprite(3, 5, 0, m2, 10)
				n = n + 1
			else
				m2 = m2 + 1
				n = 0
				if m2 = 10
					m2 = 7
				endif
			endif
		endif
		
	endif
		
		
    Sync()
loop

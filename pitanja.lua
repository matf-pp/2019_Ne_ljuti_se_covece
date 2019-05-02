local font 
local pozadina
local pitanje
local odgovor1
local odgovor2
local odgovor3
local odgovor4
local pitanja = {{"Grcka boginja ljubavi zove se: ","a) Atina","b) Afrodita", "c) Venera", "d) Hera", 2},
  {"Ameriku je otkrio: ","a) Vasko de Gama","b) Ferdinand Magelan", "c) Pedro Kabral", "d) Kristofer Kolumbo",4},
  {"Vrhovni bog u grckoj mitologiji je: ","a) Zevs","b) Had","c) Posejdon","d) Hefest",1},
  {"Simbol kiseonika je:","a) N","b) H","c) O","d) C",3},
  {"Kip slobode se nalazi u: ","a) Londonu","b) Njujorku","c) Berlinu","d) Bostonu",2},
  {"Faraon je: ", "a) rob u Rimu","b) seljak u Mesopotamiji","c) vladar u Egiptu","d) gradjanin u Atini",3},
  {"Na Bozic Isus Hrist: ","a) se rodio","b) je umro","c) se ozenio","d) se krstio",1},
  {"Osnivac islama je:","a) Buda","b) Muhamed","c) Osman","d) Alija",2},
  {"Svetskih cuda ima: ","a) 5","b) 7","c) 8","d) 10",2},
  {"Koliko planeta ima u Suncevom sistemu: ","a) 8","b) 6","c) 7","d) 10",1},
  {"Broj 100 pisan rimskim brojevima je:","a) L","b) M","c) D","d) C",4},
  {"Formula za racunanje povrsine kvadrata glasi:","a) a+a","b) a-b","c) a*b","d) a*a",4}
} --dodacu jos pitanja malo kasnije, ovde nema dovoljno za sva polja
local brojPitanja = 3 --ovo je samo random pitanje da bih videla da li radi, to treba da bude ono pozicija igraca koja se salje iz maina
local odgovorIgraca
tacan = true --mislila sam da ovoj promenljivoj pristupamo iz maina da bi se proverilo da li je odgovor tacan ()moze i neka druga ideja,slobodno)


function love.draw()
	love.graphics.setColor(1,1,1,1)
	love.graphics.draw(pozadina)

	love.graphics.setColor(255/255,255/255,153/255,1)
	love.graphics.rectangle('fill', 200, 100, 300, 150,35,35)
	love.graphics.rectangle('fill', 100, 300, 200, 60, 35, 35)
	love.graphics.rectangle('fill', 400, 300,200, 60, 35, 35)
	love.graphics.rectangle('fill', 100, 450, 200, 60, 35, 35)
	love.graphics.rectangle('fill', 400, 450, 200, 60, 35, 35)

	love.graphics.setColor(0, 0, 255, 100)
	love.graphics.printf(pitanja[brojPitanja][1],250,120,200)
	love.graphics.printf(pitanja[brojPitanja][2],150,320,150)
	love.graphics.printf(pitanja[brojPitanja][3],450,320,150)
	love.graphics.printf(pitanja[brojPitanja][4],150,470,150)
	love.graphics.printf(pitanja[brojPitanja][5],450,470,150)




end

function love.load()

	font = love.graphics.newFont("mojFont.ttf",50)
	pozadina = love.graphics.newImage("pocetna.jpg")

	

end


function love.mousepressed(x,y,button,isTouched)
	if x>100 and x<300 and y>300 and y<360 then 
		odgovorIgraca = 1
	end

	if x>400 and x<600 and y>300 and y<360 then 
		odgovorIgraca = 2
	end

	if x>100 and x<300 and y>450 and y<510 then 
		odgovorIgraca = 3
	end

	if x>400 and x<600 and y>450 and y<510 then 
		odgovorIgraca = 4
	end

end

function love.quit()

end

function love.update(dt)

end

if odgovorIgraca == pitanja[brojPitanja] then
	tacan = true 
else 
	tacan = false 
end


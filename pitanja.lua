pozadina = love.graphics.newImage("pocetna.jpg") 
local pitanje  
local odgovor1 
local odgovor2 
local odgovor3  
local odgovor4  
pitanjal ={
  {"Grcka boginja ljubavi zove se: ","a) Atina","b) Afrodita", "c) Venera", "d) Hera", 2},
  {"Broj 100 pisan rimskim brojevima je:","a) L","b) M","c) D","d) C",4},
  {"Ameriku je otkrio: ","a) Vasko de Gama","b) Ferdinand Magelan", "c) Pedro Kabral", "d) Kristofer Kolumbo",4},
  {"Bele koke ispod strehe vire. Sta je to?","a) sneg", "b) zubi", "c) jaja", "d) pahulje",2},
  {"Vrhovni bog u grckoj mitologiji je: ","a) Zevs","b) Had","c) Posejdon","d) Hefest",1},
  {"Ucestvujete na trci. Prestignete osobu koja je na dugom mestu. Na kojem ste vi mestu sada?","a) prvom", "b) drugom", "c) trecem", "d) cetvrtom",2},
  {"Simbol kiseonika je:","a) N","b) H","c) O","d) C",3},
  {"Ako izgovoris moje ime vise me nece biti. Sta sam ja?","a) tisina", "b) ime", "c) rec", "d) misao",1},
  {"Kip slobode se nalazi u: ","a) Londonu","b) Njujorku","c) Berlinu","d) Bostonu",2},
  {"Ja cuvam blago, a ljudi mene cuvaju. Sta sam ja?", "a) kovceg", "b) sef", "c) kljuc","d) katanac",3},
  {"Faraon je: ", "a) rob u Rimu","b) seljak u Mesopotamiji","c) vladar u Egiptu","d) gradjanin u Atini",3},
  {"Bez eksera na zidu visi. Sta je to?","a) slika","b) ram","c) paucina","d) ogledalo",3},
  {"Formula za racunanje povrsine kvadrata glasi:","a) a+a","b) a-b","c) a*b","d) a*a",4},
  {"Na Bozic Isus Hrist: ","a) se rodio","b) je umro","c) se ozenio","d) se krstio",1},
  {"Puna skola djaka, ni od kuda vrata. Sta je to?","a) lubenica","b) skola", "c) dinja", "d) klupa",1},
  {"Osnivac islama je:","a) Buda","b) Muhamed","c) Osman","d) Alija",2},
  {"Ceo dan ide a nikuda ne stigne. Sta je to?","a) dan","b) sunce","c) mesec","d) sat",4},
  {"Svetskih cuda ima: ","a) 5","b) 7","c) 8","d) 10",2},
  {"Ako je:\n 5+3=28\n 9+1=810\n 8+6=214\n 5+4=19\n Koliko je 7+3?","a) 410","b) 104","c) 210","d) 36",1},
  {"Koliko planeta ima u Suncevom sistemu: ","a) 8","b) 6","c) 7","d) 10",1},
  {"Druge zove sebe ne cuje. Sta je to?", "a) zvono", "b) glas","c) zvuk", "d) ime",1},
{}}

brojPitanjal = 0
odgovorIgraca = 0

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
	love.graphics.printf(pitanjal[igrac["PoljeNaKomJe"]][1],250,120,200)
	love.graphics.printf(pitanjal[igrac["PoljeNaKomJe"]][2],150,320,150)
	love.graphics.printf(pitanjal[igrac["PoljeNaKomJe"]][3],450,320,150)
	love.graphics.printf(pitanjal[igrac["PoljeNaKomJe"]][4],150,470,150)
	love.graphics.printf(pitanjal[igrac["PoljeNaKomJe"]][5],450,470,150)




end

	

function love.mousepressed(x,y,button,isTouched)
	if x>100 and x<300 and y>300 and y<360 then 
		odgovorIgraca = 1
		require("tabla") 
	end

	if x>400 and x<600 and y>300 and y<360 then 
		odgovorIgraca = 2
		require("tabla")
	end

	if x>100 and x<300 and y>450 and y<510 then 
		odgovorIgraca = 3
		require("tabla")
	end

	if x>400 and x<600 and y>450 and y<510 then 
		odgovorIgraca = 4
		require("tabla")
	end

end

function tacan (brojPitanjal)

	if (odgovorIgraca == pitanja[brojPitanjal]) then
		return true 
	else 
		return  false 
	end
end




	

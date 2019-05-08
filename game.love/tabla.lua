pozadina = love.graphics.newImage("PozadinaSaPoljima.jpeg")   ---> ucitana pozadina
pozadinap = love.graphics.newImage("pocetna.jpg") 
       
kockica=love.graphics.newImage("kockica.png")
font=love.graphics.newFont(20)
tekst=love.graphics.newText(font,"")
tekst2=love.graphics.newText(font,"")
tekst3=love.graphics.newText(font,"")
tekst4=love.graphics.newText(font,"")

math.randomseed(os.time())
       
pijuni= {kamila,koala,lav,lisica,zirafa,rakun,zec,panda}  


tabla = {
    {sirina=100,visina=160}, {sirina=100,visina=250}, {sirina=100,visina=340}, {sirina=100,visina=430}, {sirina=160,visina=470}, {sirina=230,visina=440}, {sirina=300,visina=400}, {sirina=380,visina=400}, {sirina=420,visina=320}, {sirina=400,visina=240}, {sirina=400,visina=160}, {sirina=460,visina=120}, {sirina=520,visina=130}, {sirina=590,visina=120}, {sirina=650,visina=120}, {sirina=650,visina=210}, {sirina=600,visina=260}, {sirina=550,visina=320}, {sirina=580,visina=400}, {sirina=650,visina=440}, {sirina=720,visina=410}, {sirina=790,visina=360}, {sirina=770,visina=280}
} 

brojac=0
prom = "tabla"

pitanjal={
  {},
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

 odgovorIgraca=0

function love.draw()

    if prom == "tabla" then 
      love.graphics.setColor(1, 1, 1, 1)
      love.graphics.draw(pozadina)
      love.graphics.draw(kockica,835,475)
      love.graphics.draw(tekst,15,40)
      love.graphics.draw(tekst2,15,15)
      love.graphics.draw(tekst3,280,300)
      love.graphics.draw(tekst4,300,15)

      
      love.graphics.draw(igraci[1]["Slicica"],tabla[igraci[1]["PoljeNaKomJe"]]["sirina"],tabla[igraci[1]["PoljeNaKomJe"]]["visina"])
      love.graphics.draw(igraci[2]["Slicica"],tabla[igraci[2]["PoljeNaKomJe"]]["sirina"],tabla[igraci[2]["PoljeNaKomJe"]]["visina"])
      if brojIgraca==3 then
          love.graphics.draw(igraci[3]["Slicica"],tabla[igraci[3]["PoljeNaKomJe"]]["sirina"],tabla[igraci[3]["PoljeNaKomJe"]]["visina"])
      end
      
if (brojac % brojIgraca) == 0 then
         tekst:set(igraci[1]["Ime"].." je na redu. Baci kockicu!",25,25)
         igrac=igraci[1]
         redniBroj=1
    else if (brojac % brojIgraca) == 1 then
      tekst:set(igraci[2]["Ime"].." je na redu. Baci kockicu!",25,25)
      igrac=igraci[2]
      redniBroj=2
         else 
             tekst:set(igraci[3]["Ime"].." je na redu. Baci kockicu!",25,25)
             igrac=igraci[3]
             redniBroj=3
         end 
    end
  end

  if prom == "pitanje" then 

  love.graphics.setColor(1,1,1,1)
  love.graphics.draw(pozadinap)

  love.graphics.setColor(255/255,255/255,153/255,1)
  love.graphics.rectangle('fill', 200, 100, 300, 150,35,35)
  love.graphics.rectangle('fill', 100, 300, 200, 60, 35, 35)
  love.graphics.rectangle('fill', 400, 300,200, 60, 35, 35)
  love.graphics.rectangle('fill', 100, 450, 200, 60, 35, 35)
  love.graphics.rectangle('fill', 400, 450, 200, 60, 35, 35)

  love.graphics.setColor(0, 0, 255, 100)
  love.graphics.printf(pitanjal[korak][1],250,120,200)
  love.graphics.printf(pitanjal[korak][2],150,320,150)
  love.graphics.printf(pitanjal[korak][3],450,320,150)
  love.graphics.printf(pitanjal[korak][4],150,470,150)
  love.graphics.printf(pitanjal[korak][5],450,470,150)
 
end
end

function love.mousepressed(x,y,button,isTouched)
  if prom == "tabla" and x>835 and x<950 and y>475 and y<600 then
    izracunaj()
  end

  if prom=="pitanje" and x>100 and x<300 and y>300 and y<360 then
    odgovorIgraca=1
    proveri()
  end

  if prom =="pitanje" and x>400 and x<600 and y>300 and y<360 then 
    odgovorIgraca = 2
    proveri()
  end

  if prom == "pitanje" and x>100 and x<300 and y>450 and y<510 then 
    odgovorIgraca = 3
    proveri()
  end

  if prom == "pitanje" and x>400 and x<600 and y>450 and y<510 then 
    odgovorIgraca = 4
    proveri()
  end
end
        
function proveri()
  if odgovorIgraca == pitanjal[korak][6] then 
    korak=korak+1
    igrac["PoljeNaKomJe"]=korak
    if korak == 23 then       --> ovde nastao problem
         cestitamo(igrac)     --> ovde nastao problem
    end                       --> ovde nastao problem
  else
    korak=korak-1
    igrac["PoljeNaKomJe"]=korak
  end
  tekst4:set("")
  for k = 1,brojIgraca do
    if k ~= redniBroj then
      if igraci[k]["PoljeNaKomJe"] == korak then
        igraci[k]["PoljeNaKomJe"]=1
        pojedenSi(igrac,igraci[k])
      end
    end      
  end
  prom="tabla"
end


function izracunaj()
    broj=math.random(6)
    tekst2:set(igrac["Ime"].." dobili ste broj "..tostring(broj).."!")
    brojac=brojac+1
    korak=igrac["PoljeNaKomJe"]+broj
   if korak > 23 then
        neMozeDalje(igrac)
   end
   if korak == 23 then
        igrac["PoljeNaKomJe"]=korak
        cestitamo(igrac)
   end
   if korak < 23 then ----> Ovo je menjano
      prom = "pitanje"
   end
   
end

function pojedenSi(igrac,pojedeni)
     tekst4:set(igrac["Ime"]..", pojeo si " .. pojedeni["Ime"] .. "!") 
end

function neMozeDalje(igrac)
     tekst4:set(igrac["Ime"]..", zao mi je, ne mozes dalje...") 
end

function cestitamo(igrac)
  pobednik=igrac
  require("cestitamo")
end







function love.keypressed(key)
    
   if (key == "m") then jacina = 0.0 end
   if (key == "u") then jacina = 0.5 end               ---> mute i unmute za pozadinsku muziku ---> klikom na m tj. na u
   
   love.audio.setVolume(jacina)
   
end


function love.quit()
    
end

function love.update(dt)

end


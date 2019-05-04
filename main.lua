local muzika
local jacina = 0.5

local pozadina

local kamila
local koala
local lav
local lisica
local zirafa
local rakun
local zec
local panda

local pijuni  ----> tabela u kojoj su smestene slike zivotinja 

local tabla = {
    {sirina=100,visina=160}, {sirina=100,visina=250}, {sirina=100,visina=340}, {sirina=100,visina=430}, {sirina=160,visina=470}, {sirina=230,visina=440}, {sirina=300,visina=400}, {sirina=380,visina=400}, {sirina=420,visina=320}, {sirina=400,visina=240}, {sirina=400,visina=160}, {sirina=460,visina=120}, {sirina=520,visina=130}, {sirina=590,visina=120}, {sirina=650,visina=120}, {sirina=650,visina=210}, {sirina=600,visina=260}, {sirina=550,visina=320}, {sirina=580,visina=400}, {sirina=650,visina=440}, {sirina=720,visina=410}, {sirina=790,visina=360}, {sirina=770,visina=280}
}  ----> po kojoj mrdamo igrace
igraci = {}
local igraci2   ----> ako se odabere OPCIJA DVA IGRACA   ----> igraci = igraci2
local igraci3   ----> ako se odabere OPCIJA TRI IGRACA   ----> igraci = igraci3

--treba da se doda izbor broja igraca, stavljeno podrazumevano dva trenutno(Natalija)
brojIgraca = 2    ---> probaj i za 3 ako zelis...
brojac = 0
local tekst
local tekst3
local tekst4
local font
broj=0
local korak
local igrac
math.randomseed(os.time())

function love.draw()

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
      
----> izmenila sam da se uvek poziva sa igraci(dole ima provera za koliko igraca i postavi odgovarajucu tabelu) umesto igraci2 i igraci3 (bilo mi je lakse da se snadjem...)

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

function love.mousepressed(x,y,button,isTouched)
    if x>835 and x<950 and y>475 and y<600 then
      izracunaj()
    end
end
  
        

function izracunaj()
    broj=math.random(6)
    tekst2:set(igrac["Ime"].." dobili ste broj "..tostring(broj).."!")
    brojac=brojac+1
   if igrac["PoljeNaKomJe"] + broj > 23 then
        neMozeDalje(igrac)
   end
   if igrac["PoljeNaKomJe"] + broj == 23 then
        korak=igrac["PoljeNaKomJe"]+broj
        igrac["PoljeNaKomJe"]=korak
        cestitamo(igrac)
   end
   if igrac["PoljeNaKomJe"] + broj < 23 then
          korak=igrac["PoljeNaKomJe"]+broj
          igrac["PoljeNaKomJe"]=korak
          for k,v in pairs(igraci) do
              if k ~= redniBroj then
                 if igraci[k]["PoljeNaKomJe"] == korak then
                    igraci[k]["PoljeNaKomJe"]=1
                    pojedenSi(igrac,igraci[k])
                 end
              end      
          end       
   end
   
end

function pojedenSi(igrac,pojedeni)
     tekst4:set(igrac["Ime"]..", pojeo si " .. pojedeni["Ime"] .. "!") ------> moze nastati problem ako igraci zadaju predugacko ime, zato OGRANICI IME IGRACA! [mozda ce se preklopiti delom tekstovi u suprotnom]
end

function neMozeDalje(igrac)
     tekst4:set(igrac["Ime"]..", zao mi je, ne mozes dalje...")------> moze nastati problem ako igraci zadaju predugacko ime, zato OGRANICI IME IGRACA! [mozda ce se preklopiti delom tekstovi u suprotnom]
end

function cestitamo(igrac)
     tekst3:set(igrac["Ime"]..", cestitamo!!! Vi ste pobednik! ")  -----> ovde jos nisam blokirala da nastave da udaraju kockicu i da se krecu ostali dok ne stignu do cilja.... [ALI TU IDE NOVI PROZOR? i tamo cete ispisati cestitamo,igraj ponovo/izadji?]
end

function love.load() 
    
       love.audio.setVolume(jacina)                      
       muzika = love.audio.newSource("pesma.mp3","stream") 
       muzika:setLooping(true)
       muzika:play()                                                -----> podesavanje muzike
    
       pozadina = love.graphics.newImage("PozadinaSaPoljima.jpeg")   ---> ucitala pozadinu

       kamila = love.graphics.newImage("kamila.png")
       koala = love.graphics.newImage("koala.png") 
       lav = love.graphics.newImage("lav.png")                 -----> ucitala zivotinjice (slike)
       lisica = love.graphics.newImage("lisica.png")      
       zirafa = love.graphics.newImage("zirafa.png")
       rakun = love.graphics.newImage("rakun.png")
       zec = love.graphics.newImage("zeka.png")
       panda = love.graphics.newImage("panda.png")
       
       kockica=love.graphics.newImage("kockica.png")
       font=love.graphics.newFont(20)
       tekst=love.graphics.newText(font,"")
       tekst2=love.graphics.newText(font,"")
       tekst3=love.graphics.newText(font,"")
       tekst4=love.graphics.newText(font,"")

       
pijuni= {kamila,koala,lav,lisica,zirafa,rakun,zec,panda}  

igraci2 = {
    { Ime = "Prvi Igrac", PoljeNaKomJe = 1, Slicica = pijuni[1]},
    { Ime = "Drugi Igrac", PoljeNaKomJe = 1, Slicica = pijuni[2]}
}

igraci3 = {
    { Ime = "Prvi Igrac", PoljeNaKomJe = 1, Slicica = pijuni[1]},
    { Ime = "Drugi Igrac", PoljeNaKomJe = 1, Slicica = pijuni[2]},
    { Ime = "Treci Igrac", PoljeNaKomJe = 1, Slicica = pijuni[3]}    
}


if(brojIgraca == 2) then
    igraci = igraci2
else if(brojIgraca == 3) then
        igraci = igraci3
     end
end

pitanja={
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

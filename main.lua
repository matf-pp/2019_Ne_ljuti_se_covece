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

local igraci2   ----> ako se odabere OPCIJA DVA IGRACA   ----> igraci = igraci2
local igraci3   ----> ako se odabere OPCIJA TRI IGRACA   ----> igraci = igraci3

local pozicija = 1

--treba da se doda izbor broja igraca, stavljeno podrazumevano dva trenutno(Natalija)
local brIgraca = 2
brojac=0
local tekst
local font
broj=0
local korak
local igrac
local transform

function love.draw()

    
      love.graphics.draw(pozadina)
      love.graphics.draw(kockica,835,475)
      love.graphics.draw(tekst,15,40)
      love.graphics.draw(tekst2,15,15)
      
      if brIgraca==2 then
        love.graphics.draw(igraci2["Prvi"]["Slicica"],tabla[igraci2["Prvi"]["PoljeNaKomJe"]]["sirina"],tabla[igraci2["Prvi"]["PoljeNaKomJe"]]["visina"])
        love.graphics.draw(igraci2["Drugi"]["Slicica"],tabla[igraci2["Drugi"]["PoljeNaKomJe"]]["sirina"],tabla[igraci2["Drugi"]["PoljeNaKomJe"]]["visina"])
      else
        love.graphics.draw(igraci3["Prvi"]["Slicica"],tabla[igraci3["Prvi"]["PoljeNaKomJe"]]["sirina"],tabla[igraci3["Prvi"]["PoljeNaKomJe"]]["visina"])
        love.graphics.draw(igraci3["Drugi"]["Slicica"],tabla[igraci3["Drugi"]["PoljeNaKomJe"]]["sirina"],tabla[igraci3["Drugi"]["PoljeNaKomJe"]]["visina"])
        love.graphics.draw(igraci3["Treci"]["Slicica"],tabla[igraci3["Treci"]["PoljeNaKomJe"]]["sirina"],tabla[igraci3["Treci"]["PoljeNaKomJe"]]["visina"])
      end
      

  if brIgraca==2 then
    if math.fmod(brojac,brIgraca)==0 then
      tekst:set(igraci2["Prvi"]["Ime"].." je na redu. Baci kockicu!",25,25)
      igrac=igraci2["Prvi"]
      if igraci2["Prvi"]["PoljeNaKomJe"]+broj<=23 then
        igraci2["Prvi"]["PoljeNaKomJe"]=igraci2["Prvi"]["PoljeNaKomJe"]+broj
      end
    else
      tekst:set(igraci2["Drugi"]["Ime"].." je na redu. Baci kockicu!",25,25)
      igrac=igraci2["Drugi"]
      if igraci2["Drugi"]["PoljeNaKomJe"]+broj<=23 then
        igraci2["Drugi"]["PoljeNaKomJe"]=igraci2["Drugi"]["PoljeNaKomJe"]+broj
      end
    end
  else
    if math.fmod(brojac,brIgraca)==0 then
      tekst:set(igraci3["Prvi"]["Ime"].." je na redu. Baci kockicu!",25,25)
      igrac=igraci3["Prvi"]
    elseif math.fmod(brojac,brIgraca)==1 then
      tekst:set(igraci3["Drugi"]["Ime"].." je na redu. Baci kockicu!",25,25)
      igrac=igraci3["Drugi"]
    else
      tekst:set(igraci3["Treci"]["Ime"].." je na redu. Baci kockicu!",25,25)
      igrac=igraci3["Treci"]
    end
  end
  
  function love.mousepressed(x,y,button,isTouched)
    if x>835 and x<950 and y>475 and y<600 then
      izracunaj()
    else
    end
  end
  
  

  
      
--       love.graphics.draw(kamila,100,100)
--       love.graphics.draw(koala,650,400)   ----> zivotinje na random mestima       
--       love.graphics.draw(lav,400,400)

--[[
    love.graphics.draw(lisica,100,160)
    love.graphics.draw(lisica,100,250)
    love.graphics.draw(lisica,100,340)
    love.graphics.draw(lisica,100,430)   ]]
--     love.graphics.draw(lisica,160,470)
--[[   
    love.graphics.draw(lisica,230,440)
    love.graphics.draw(lisica,300,400)
    love.graphics.draw(lisica,380,400)
    love.graphics.draw(lisica,420,320)
    love.graphics.draw(lisica,400,240)
    love.graphics.draw(lisica,400,160)
    love.graphics.draw(lisica,460,120)
    love.graphics.draw(lisica,520,130)
    love.graphics.draw(lisica,590,120)
    love.graphics.draw(lisica,650,120)
    love.graphics.draw(lisica,650,210)      ----> put sam po lisici pravila
    love.graphics.draw(lisica,600,260)
    love.graphics.draw(lisica,550,320)
    love.graphics.draw(lisica,580,400)
    love.graphics.draw(lisica,650,440)
    love.graphics.draw(lisica,720,410)
    love.graphics.draw(lisica,790,360)
    love.graphics.draw(lisica,770,280) ]]

--    for pozicija=1,23 do      --- zakomentarisi ovaj red (**)
--     love.graphics.draw(zirafa,tabla[pozicija].sirina,tabla[pozicija].visina)     --> ako zelite da vidite zirafu na putu
--    end                       --- zakomentarisi ovaj red (**)

--      love.graphics.draw(zirafa,100,300)
--      love.graphics.draw(rakun,500,200)    ---> zivotinje iscrtane na random mestima
--      love.graphics.draw(zec,650,100)
--      love.graphics.draw(panda,750,100)
      
      
end

function izracunaj()
    math.randomseed(os.time())
    broj=math.random(6)
    tekst2:set(igrac["Ime"].." dobili ste broj "..tostring(broj).."!")
    brojac=brojac+1
    
  end

function love.load() 
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

       
pijuni= {kamila,koala,lav,lisica,panda,rakun,zec,zirafa}



    


igraci2 = {
   Prvi = { Ime = "Prvi Igrac", PoljeNaKomJe = 1, Slicica = pijuni[1]},
   Drugi = { Ime = "Drugi Igrac", PoljeNaKomJe = 1, Slicica = pijuni[2]}
}

igraci3 = {
   Prvi = { Ime = "Prvi Igrac", PoljeNaKomJe = 1, Slicica = pijuni[1]},
   Drugi = { Ime = "Drugi Igrac", PoljeNaKomJe = 1, Slicica = pijuni[2]},
   Treci = { Ime = "Treci Igrac", PoljeNaKomJe = 1, Slicica = pijuni[3]}    
}

pitanja1={
  {"Grcka boginja ljubavi zove se: ","a) Atina","b) Afrodita", "c) Venera", "d) Hera", 2},
  {"Ameriku je otkrio: ","a) Vasko de Gama","b) Ferdinand Magelan", "c) Pedro Kabral", "d) Kristofer Kolumbo",4},
  {"Vrhovni bog u grckoj mitologiji je: ","a) Zevs","b) Had","c) Posejdon","d) Hefest",1},
  {"Simbol kiseonika je:","a) N","b) H","c) O","d) C",3},
  {"Kip slobode se nalazi u: ","a) Londonu","b) Njujorku","c) Berlinu","d) Bostonu",2},
  {"Faraon je: ", "a) rob u Rimu","b) seljak u Mesopotamiji","c) vladar u Egiptu","d) gradjanin u Atini",3},
  {"Na Bozic Isus Hrist: ","a) se rodio","b) je umro","c) se ozenio","d) se krstio",1},
  {"Osnivac islama je:","a) Buda","b) Muhamed","c) Osman","d) Alija",2},
  {"Svetskih cuda ima: ","a) 5","b) 7","c) 8","d) 10",2},
  {"Koliko planeta ima u Suncevom sistemu: ","a) 8","b) 6","c) 7","d) 10",1}}

pitanja2={
  {"Broj 100 pisan rimskim brojevima je:","a) L","b) M","c) D","d) C",4},
  {"Formula za racunanje povrsine kvadrata glasi:","a) a+a","b) a-b","c) a*b","d) a*a",4}}



-- pristup igracu: npr.  igraci.Prvi.Ime   ILI   igraci["Prvi"]["Ime"]
--   izmena argumenta moze: npr. igraci.Prvi.PoljeNaKomJe = 5

end


function love.quit()
    
end

function love.update(dt)

--     if pozicija < 23 then
--         pozicija = pozicija + 1    ---> brzinom svetlosti iscrta zirafu xD ( ali zakomentarisite for i end gore gde je (**) )
--     end
end

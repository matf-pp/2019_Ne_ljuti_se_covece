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

local igraci = {} ----> tabela koja cuva info o igracima
local igraci2   ----> ako se odabere OPCIJA DVA IGRACA   ----> igraci = igraci2
local igraci3   ----> ako se odabere OPCIJA TRI IGRACA   ----> igraci = igraci3

local pozicija = 0

function love.draw()

    
      love.graphics.draw(pozadina)

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

       
pijuni= {kamila,koala,lav,lisica,panda,rakun,zec,zirafa}



    


igraci2 = {
   Prvi = { Ime = "Prvi Igrac", PoljeNaKomJe = 0, Slicica = pijuni[1]},
   Drugi = { Ime = "Drugi Igrac", PoljeNaKomJe = 0, Slicica = pijuni[2]}
}

igraci3 = {
   Prvi = { Ime = "Prvi Igrac", PoljeNaKomJe = 0, Slicica = pijuni[1]},
   Drugi = { Ime = "Drugi Igrac", PoljeNaKomJe = 0, Slicica = pijuni[2]},
   Treci = { Ime = "Treci Igrac", PoljeNaKomJe = 0, Slicica = pijuni[3]}    
}

-- if OdaberiBroj == 2 then
--     igraci = igraci2              ---->  ovo treba srediti....
-- else
--     igraci = igraci3
-- end




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

local pozadinskaSlika
local zivotinjice
local tekst1
local tekst2
local tekst3
local tekst4
local font
brojIgraca = 0  ---> globalna

function love.draw()
    
    love.graphics.setColor(1,1,1,1)
    love.graphics.draw(pozadinskaSlika)
    love.graphics.draw(zivotinjice,510,150)
    
    love.graphics.setColor(70/255,130/255,180/255,1)    ----> mora BAR verzija 11.0 (u ranijim su 0-255, a ovde i posle 0-1)
    love.graphics.rectangle('fill',100,100,200,60,35,35)
    love.graphics.rectangle('fill',100,260,200,60,35,35)
    love.graphics.rectangle('fill',100,420,200,60,35,35)
    
    love.graphics.setColor(1,1,1,100)
    love.graphics.draw(tekst1,150,100)
    love.graphics.draw(tekst2,150,260)
    love.graphics.draw(tekst3,170,420)
    love.graphics.draw(tekst4,300,500)

end


function love.load()
    
     pozadinskaSlika = love.graphics.newImage("pocetna.jpg")
     zivotinjice = love.graphics.newImage("zivotinjice.png")
     font = love.graphics.newFont("mojFont.ttf",50)
     tekst1 = love.graphics.newText(font,"2 igraca")
     tekst2 = love.graphics.newText(font,"3 igraca")
     tekst3 = love.graphics.newText(font,"izlaz")
     tekst4 = love.graphics.newText(font," C o v e c e ,   n e    l j u t i   s e ")
    
end


function love.mousepressed(x,y,button,isTouched)
    if x>100 and x<300 and y>100 and y<160 then
        brojIgraca = 2
        require("odabir")
--         love.event.quit() 
    end
    if x>100 and x<300 and y>260 and y<320 then
         brojIgraca = 3
         require("odabir")
--          love.event.quit()

    end
    if x>100 and x<300 and y>420 and y<480 then
           love.event.quit()
    end
    

end


function love.quit()

end


function love.update(dt)

end

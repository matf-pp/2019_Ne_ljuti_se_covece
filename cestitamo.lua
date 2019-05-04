cestitamo=love.graphics.newImage("cestitamo.jpg")
font = love.graphics.newFont("mojFont.ttf",100)
font1 = love.graphics.newFont("mojFont.ttf",50)
tekst = love.graphics.newText(font,"Cestitamo "..pobednik["Ime"].." pobedili ste")
tekst1 = love.graphics.newText(font1,"Igraj ponovo")
tekst2 = love.graphics.newText(font1,"Izadji")

function love.draw()
  love.graphics.draw(cestitamo)
  
  love.graphics.draw(tekst,20,50)
  love.graphics.setColor(70/255,130/255,180/255,1)
  love.graphics.rectangle('fill',100,400,200,70,35,35)
  love.graphics.rectangle('fill',500,400,200,70,35,35)
  love.graphics.setColor(1,1,1,100)
  love.graphics.draw(tekst1,130,410)
  love.graphics.draw(tekst2,570,410)

end

function love.mousepressed(x,y,button,isTouched)
    if x>100 and x<300 and y>400 and y<470 then
           love.event.quit("restart")
  end
    if x>500 and x<700 and y>400 and y<470 then
           love.event.quit()
    end
end

function love.quit()
end

function love.update(dt)
end

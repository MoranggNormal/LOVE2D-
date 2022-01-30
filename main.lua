function love.load()
    x = 100
    y = 100
    fruits = {"apple", "banana"}

    for i = 1, #fruits do
        fruit = fruits[i]
        if i == 2 then
            i = 1
        end
    end

end

function love.update(dt)
    if love.keyboard.isDown("right") then
        x = x + 100 * dt
    elseif love.keyboard.isDown("left") then
        x = x - 100 * dt
    elseif love.keyboard.isDown("up") then
        y = y - 100 * dt
    elseif love.keyboard.isDown("down") then
        y = y + 100 * dt
    end
end

function love.draw()
    for i, fruit in ipairs(fruits) do
        love.graphics.print(fruit, 100, 100 + 50 * i)
    end

    love.graphics.rectangle("line", x, y, 200, 150)
end


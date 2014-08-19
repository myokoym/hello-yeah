class HelloYeah < Game
  def setup
    @x = 400
    @y = 200
    @image = Image["images/meat.png"]
  end

  def update(elapsed)
    @x -= 5 if keyboard.pressing?(:left)  or keyboard.pressing?(:h)
    @x += 5 if keyboard.pressing?(:right) or keyboard.pressing?(:l)
    @y -= 5 if keyboard.pressing?(:up)    or keyboard.pressing?(:k)
    @y += 5 if keyboard.pressing?(:down)  or keyboard.pressing?(:j)

    display.clear
    display.image(@image, V[@x, @y])
  end
end

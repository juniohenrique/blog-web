

Before do
  page.current_window.resize_to(1280,800)
end

After do |scenario|
  filename = scenario.name.tr(' ', '_')

  target = "logs/shots/#{filename.downcase!}.png"

  page.save_screenshot(target)
  embed(target, 'image/png', 'Clique aqui')
end

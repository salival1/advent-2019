file = {% if env("FILE") %} file = {{env("FILE")}} {% else %} file = "./input" {% end %}
total = 0
File.read_lines(file).map{|i| i.to_i}.each do |val|
    total += (valium = (((val/3).floor)-2))
    {% if env("DEBUG") %} printf("i:%d, o:%d\n", val, valium) {% end %}
end

puts total
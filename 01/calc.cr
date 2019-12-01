file = "./input"
{% if env("FILE") %} file = {{env("FILE")}} {% end %}
total = 0
(arr = File.read_lines(file)).each do |val|
    total += (((val.to_i/3).floor)-2)
    {% if env("DEBUG") %} printf("i:%d, o:%d\n", val, total) {% end %}
end

puts total
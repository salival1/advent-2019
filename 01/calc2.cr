file = {% if env("FILE") %} file = {{env("FILE")}} {% else %} file = "./input" {% end %}
total = 0
File.read_lines(file).map{|i| i.to_i}.each do |val|
    while ((valium = val = ((val/3).floor)-2)) > 0
        {% if env("DEBUG") %} printf("i:%d, o:%d\n", valium, val) {% end %}
        total += val
    end
end

puts total
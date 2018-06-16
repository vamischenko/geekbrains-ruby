
num= ARGV[0].to_i
power=ARGV[1].to_i
rez=0
i=1
while i <= num
rez+=i**power
 i+=1
end
puts rez

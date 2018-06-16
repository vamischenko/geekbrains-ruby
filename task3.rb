first_time= ARGV[0].to_i
second_time= ARGV[1].to_i
@result = Array.new

def texts(num, nom, gen, plu)
if num == 0
 return
end
 last_digit=num%10

   case last_digit
  when 1
     @result.push(num,nom)
   when 2,3,4
     @result.push(num,gen)
  else
    @result.push(num,plu)
  end
end


sum=first_time+second_time
 sec = sum % 60
 sum /= 60
 mins = sum % 60
 sum /= 60
 hrs = sum % 24
texts(hrs,"час","часа","часов")
texts(mins,"минута","минуты","минут")
texts(sec,"секунда","секунды","секунд")

puts @result.join(" ")

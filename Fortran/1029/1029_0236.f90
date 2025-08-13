real x
x = 3.14/3.0
open(51)
write(51, '(f20.16)') x
rewind(51)
read(51, '(f20.16)') x
close(51)

if(.not.(sin(3.14/3).lt.0.5)) then
   print *, ': ok'
else
   print *, 'ng'
endif
end

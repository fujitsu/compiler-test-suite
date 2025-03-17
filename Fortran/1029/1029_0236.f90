real x
x = 3.14/3.0
open(10)
write(10, '(f20.16)') x
rewind(10)
read(10, '(f20.16)') x
close(10)

if(.not.(sin(3.14/3).lt.0.5)) then
   print *, ': ok'
else
   print *, 'ng'
endif
end

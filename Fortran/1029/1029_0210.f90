i = 4
open(10)
write(10, '(i4)') i
rewind(10)
read(10, '(i4)') i
close(10)

if(.not.(i.le.3)) then
   print *, ': ok'
else
   print *, 'ng'
endif
end

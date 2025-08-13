i = 4
open(17)
write(17, '(i4)') i
rewind(17)
read(17, '(i4)') i
close(17)

if(.not.(i.lt.5)) then
   print *, 'ng'
else
   print *, ': ok'
endif
end

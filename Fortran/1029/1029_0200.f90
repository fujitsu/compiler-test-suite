i = 4
open(15)
write(15, '(i4)') i
rewind(15)
read(15, '(i4)') i
close(15)

if(.not.(i.lt.4)) then
   print *, ': ok'
else
   print *, 'ng'
endif
end

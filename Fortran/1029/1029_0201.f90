i = 4
open(16)
write(16, '(i4)') i
rewind(16)
read(16, '(i4)') i
close(16)

if(.not.(i.lt.3)) then
   print *, ': ok'
else
   print *, 'ng'
endif
end

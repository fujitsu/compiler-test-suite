i = 4
open(20)
write(20, '(i4)') i
rewind(20)
read(20, '(i4)') i
close(20)

if(.not.(i.ge.4)) then
   print *, 'ng'
else
   print *, ': ok'
endif
end

i = 4
open(21)
write(21, '(i4)') i
rewind(21)
read(21, '(i4)') i
close(21)

if(.not.(i.ge.3)) then
   print *, 'ng'
else
   print *, ': ok'
endif
end

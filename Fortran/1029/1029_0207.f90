i = 4
open(22)
write(22, '(i4)') i
rewind(22)
read(22, '(i4)') i
close(22)

if(.not.(i.ge.5)) then
   print *, ': ok'
else
   print *, 'ng'
endif
end

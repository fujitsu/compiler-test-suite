i = 4
open(44)
write(44, '(i4)') i
rewind(44)
read(44, '(i4)') i
close(44)

if(.not.(.not.(i.eq.4))) then
   print *, ': ok'
else
   print *, 'ng'
endif
end

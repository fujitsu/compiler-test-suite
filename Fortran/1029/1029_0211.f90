i = 4
open(26)
write(26, '(i4)') i
rewind(26)
read(26, '(i4)') i
close(26)

if(.not.(i.eq.4)) then
   print *, 'ng'
else
   print *, ': ok'
endif
end

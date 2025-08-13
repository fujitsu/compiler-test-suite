i = 4
open(14)
write(14, '(i4)') i
rewind(14)
read(14, '(i4)') i
close(14)

if(.not.(i.gt.3)) then
   print *, 'ng'
else
   print *, ': ok'
endif
end

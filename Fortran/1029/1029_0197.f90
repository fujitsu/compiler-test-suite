i = 4
open(12)
write(12, '(i4)') i
rewind(12)
read(12, '(i4)') i
close(12)

if(.not.(i.gt.4)) then
   print *, ': ok'
else
   print *, 'ng'
endif
end

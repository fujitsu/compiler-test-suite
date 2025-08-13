i = 4
open(33)
write(33, '(i4)') i
rewind(33)
read(33, '(i4)') i
close(33)

if(.not.(.not.(i.gt.5))) then
   print *, 'ng'
else
   print *, ': ok'
endif
end

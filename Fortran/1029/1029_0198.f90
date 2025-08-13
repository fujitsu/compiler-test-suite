i = 4
open(13)
write(13, '(i4)') i
rewind(13)
read(13, '(i4)') i
close(13)

if(.not.(i.gt.5)) then
   print *, ': ok'
else
   print *, 'ng'
endif
end

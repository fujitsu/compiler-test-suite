i = 4
open(38)
write(38, '(i4)') i
rewind(38)
read(38, '(i4)') i
close(38)

if(.not.(.not.(i.ge.4))) then
   print *, ': ok'
else
   print *, 'ng'
endif
end

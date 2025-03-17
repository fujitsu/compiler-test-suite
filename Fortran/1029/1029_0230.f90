i = 4
open(10)
write(10, '(i4)') i
rewind(10)
read(10, '(i4)') i
close(10)

if(.not.(.not.(i.ne.4))) then
   print *, 'ng'
else
   print *, ': ok'
endif
end

i = 4
open(27)
write(27, '(i4)') i
rewind(27)
read(27, '(i4)') i
close(27)

if(.not.(i.ne.4)) then
   print *, ': ok'
else
   print *, 'ng'
endif
end

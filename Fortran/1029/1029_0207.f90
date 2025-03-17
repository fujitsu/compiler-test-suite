i = 4
open(10)
write(10, '(i4)') i
rewind(10)
read(10, '(i4)') i
close(10)

if(.not.(i.ge.5)) then
   print *, ': ok'
else
   print *, 'ng'
endif
end

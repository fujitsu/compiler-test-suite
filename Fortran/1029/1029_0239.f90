i = 2004

open(54)
write(54, '(i4)') i
rewind(54)
read(54, '(i4)') i
close(54)

if(.not.(mod(i,4).eq.0 .and. (mod(i,100).ne.0.or.mod(i,400).eq.0))) then
   print *, 'ng'
else
   print *, ': ok'
endif
end

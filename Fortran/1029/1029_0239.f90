i = 2004

open(10)
write(10, '(i4)') i
rewind(10)
read(10, '(i4)') i
close(10)

if(.not.(mod(i,4).eq.0 .and. (mod(i,100).ne.0.or.mod(i,400).eq.0))) then
   print *, 'ng'
else
   print *, ': ok'
endif
end

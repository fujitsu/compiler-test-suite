integer e
logical a, b
a = .true.
b = .false.
open(58)
write(58, '(2l)') a, b
rewind(58)
read(58, '(2l)') a, b
close(58)

e = 0
if(.not.(.not.(.not.(.not.a)))) then
   e = e+0
else
   e = e+1
endif
if(.not.(.not.(.not.(.not.b)))) then
   e = e+1
else
   e = e+0
endif
if(e .eq. 0) then
   print *, ': ok'
else
   print *, 'ng'
endif
end

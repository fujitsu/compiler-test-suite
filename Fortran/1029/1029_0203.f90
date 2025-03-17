integer e
logical a, b
a = .true.
b = .false.
open(10)
write(10, '(2l)') a, b
rewind(10)
read(10, '(2l)') a, b
close(10)

e = 0
if(.not.(.not.a)) then
   e = e+0
else
   e = e+1
endif
if(.not.(.not.b)) then
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

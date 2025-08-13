logical a, b
a = .true.
b = .false.
open(46)
write(46, '(2l)') a, b
rewind(46)
read(46, '(2l)') a, b
close(46)

if(.not.(.not.(a.and.b))) then
   print *, 'ng'
else
   print *, ': ok'
endif
end

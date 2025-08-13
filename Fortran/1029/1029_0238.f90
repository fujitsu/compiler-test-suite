logical a,b,c,d

a = .false.
b = .true.
c = .false.
d = .false.

open(53)
write(53, '(4l)') a, b, c, d
rewind(53)
read(53, '(4l)') a, b, c, d
close(53)

if((.not.(a.or.b).and..not.(c.or.d))) then
   print *, 'ng'
else
   print *, ': ok'
endif
end

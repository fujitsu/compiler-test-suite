logical a,b,c,d

a = .false.
b = .true.
c = .false.
d = .false.

open(10)
write(10, '(4l)') a, b, c, d
rewind(10)
read(10, '(4l)') a, b, c, d
close(10)

if(.not.(.not.(a.or.b).and..not.(c.or.d))) then
    print *, ': ok'
else 
    print *, 'ng'
endif
end

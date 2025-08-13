logical a,b,c,d

a = .false.
b = .true.
c = .false.
d = .false.

open(50)
write(50, '(4l)') a, b, c, d
rewind(50)
read(50, '(4l)') a, b, c, d
close(50)

if(.not.(.not.(a.or.b).and..not.(c.or.d))) then
    print *, ': ok'
else
    print *, 'ng'
endif
end

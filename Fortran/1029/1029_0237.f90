integer a,b,c,d,e,f,g,h

a = 1
b = 2
c = 3
d = 4
e = 5
f = 6
g = 7
h = 8

open(10)
write(10, '(8i4)') a, b, c, d, e, f, g, h
rewind(10)
read(10, '(8i4)') a, b, c, d, e, f, g, h
close(10)

if(.not.((a.gt.e.or.b.lt.f).and.(c.ge.g.or.d.le.h))) then
   print *, 'ng'
else
   print *, ': ok'
endif
end

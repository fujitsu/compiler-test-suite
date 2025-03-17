integer a, b, c, d
a = 1
b = 2
c = 3
d = 4

open(10)
write(10, '(4i4)') a, b, c, d
rewind(10)
read(10, '(4i4)') a, b, c, d
close(10)

if(a.gt.b .and. c.gt.d) then
  print *, 'ng'
else if(a.lt.b .and. c.gt.d) then
  print *, 'ng'
else if(a.gt.b .and. c.lt.d) then
  print *, 'ng'
else if(a.lt.b .and.c.lt.d) then
  print *, ': ok'
else
  print *, 'ng'
endif
end

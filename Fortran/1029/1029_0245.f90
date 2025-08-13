integer a, b, c, d
a = 1
b = 2
c = 3
d = 4

open(57)
write(57, '(4i4)') a, b, c, d
rewind(57)
read(57, '(4i4)') a, b, c, d
close(57)

if(a.gt.b .and. c.gt.d) then
   goto 10
else if(a.lt.b .and. c.gt.d) then
   goto 10
else if(a.gt.b .and. c.lt.d) then
   goto 10
else if(a.lt.b .and.c.lt.d) then
   goto 20
else
   goto 10
endif

10 continue
print *, 'ng'
stop

20 continue
print *, ': ok'

end

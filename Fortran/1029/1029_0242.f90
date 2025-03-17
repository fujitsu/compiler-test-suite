integer x, y

x = 100
open(10)
write(10, 100) x
rewind(10)
read(10, 100) y
close(10)
if(x .eq. y .and. x .eq. 100) goto 200
print *, 'ng', x, y
stop

200 continue
print *, ': ok'
100 format(i4)
end

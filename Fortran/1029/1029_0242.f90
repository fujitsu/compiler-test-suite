integer x, y

x = 100
open(55)
write(55, 100) x
rewind(55)
read(55, 100) y
close(55)
if(x .eq. y .and. x .eq. 100) goto 200
print *, 'ng', x, y
stop

200 continue
print *, ': ok'
100 format(i4)
end

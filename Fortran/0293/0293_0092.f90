subroutine s(x,z)
integer x(1:1),z(2,3,4,1)
x(3)=1
x(4:5)=2
if (any(x(3:5)/=[1,2,2]))print *,101
x(1)=10
write(1,*) x
z(2,3,4,3)=1
z(2,3,4,4:5)=2
if (any(z(2,3,4,3:5)/=[1,2,2]))print *,201
z(2,3,4,1)=10
write(1,*) z
end

integer x(5),y(2*3*4*5)
y(1:2*3*4)=0
call s(x,y)
print *,'pass'
end

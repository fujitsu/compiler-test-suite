integer :: i
interface
subroutine ss(d)
integer,value :: d
end subroutine
end interface

i=2
call ss(i)
i=i+1
call ss(i)
i=i+1
call ss(i)
end

subroutine ss(d)
integer,save::ii=0
integer,value :: d
ii=ii+1
print*,""
print*,"ss Call number",ii
d=d+1
block
integer :: xx(d),yy(d+1)
print*,"b1: ",size(xx),size(yy)
d=d+1
block
integer :: xx(d),yy(d+1)
print*,"b2: ",size(xx),size(yy)
d=d+1
block
integer :: xx(d),yy(d+1)
print*,"b3: ",size(xx),size(yy)
end block
end block
end block
end subroutine

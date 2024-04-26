type x
   integer:: x1
   integer:: x2
end type
type ::y
  integer::y1
  type(x)::y2
end type
type(y),pointer:: v(:)
type(y),target:: t(3)
namelist /nam/v
v=>t(1:3:2)
v=y(1,x(2,3))
write(1,nam)
call w

print *,'pass'
end
subroutine w
type x
   integer:: x1
   integer:: x2
end type
type y
  integer::y1
  type(x)::y2
end type
type(y),target:: v(2)
namelist /nam/v
rewind 1
read(1,nam) 
if (v(1)%y1/=1) print *,201
if (v(1)%y2%x1/=2) print *,202
if (v(1)%y2%x2/=3) print *,203
if (v(2)%y1/=1) print *,201
if (v(2)%y2%x1/=2) print *,202
if (v(2)%y2%x2/=3) print *,203
end

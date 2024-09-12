type x
  integer::x1
  integer::x2
end type
type,extends(x):: xx
  integer::x3
end type
type (xx):: z
namelist /nam/z
z%x1=1
z%x2=2
z%x3=3
if (z%x1/=1)print *,'error-1'
if (z%x2/=2)print *,'error-2'
if (z%x3/=3)print *,'error-3'
write(1,*)z
rewind 1
read(1,*) n1,n2,n3
if (n1/=1)print *,'error-4'
if (n2/=2)print *,'error-5'
if (n3/=3)print *,'error-6'
write(2,nam)
call chk
print *,'pass'
end
subroutine chk
type x
  integer::x1
  integer::x2
  integer::x3
end type
type(x)::z
namelist /nam/z
rewind 2
read(2,nam)
if (z%x1/=1)print *,'error-7'
if (z%x2/=2)print *,'error-8'
if (z%x3/=3)print *,'error-9'
end




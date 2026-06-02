recursive subroutine s
type x1
  integer::x1a=1
end type
type x2
  integer::x2a
  type(x1):: x2b(3)
  integer::x2z
end type
type x3
  integer::x3a
  type(x2):: x3b(2)
  integer::x3z
  type(x2):: x3c(2)
  type(x1):: x3d(2)
end type
type(x3):: v1,v2
namelist /nam/v1,v2
write(15,nam)
end
call s
print *,'sngg346p : pass'
end

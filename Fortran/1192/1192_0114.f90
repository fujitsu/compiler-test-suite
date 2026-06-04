recursive subroutine s
type x1
  integer::x1a=1
end type
type x2
  type(x1):: x2a
  type(x1):: x2b
  type(x1):: x2c
end type
type x3
  type(x2):: x3a
  type(x2):: x3b
  type(x2):: x3c
  type(x2):: x3d
end type
type(x3):: v1,v2
namelist /nam/v1,v2
write(16,nam)
end
call s
print *,'sngg347p : pass'
end

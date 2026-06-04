recursive subroutine s
type x1
  integer::x1a=1
end type
type x2
  type(x1):: x2a
  type(x1):: x2b
end type
type x3
  type(x2):: x3a
  type(x1):: x3b
end type
type x4
  type(x3):: x4a
  type(x1):: x4b
end type
type x5
  type(x4):: x5a
  type(x1):: x5b
end type
type(x5):: v1,v2
namelist /nam/v1,v2
write(17,nam)
end
call s
print *,'sngg348p : pass'
end

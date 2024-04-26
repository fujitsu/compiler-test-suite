type x1
  integer::x11=1
  integer::x12=2
end type
type x2
  integer::x21=3
  integer::x22=4
end type
type x
  type(x1):: x01
  type(x2):: x02
end type
type (x):: v

write(1,*) v
print *,'pass'
end

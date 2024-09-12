module m1
type,bind(c):: x
 integer:: x1
 integer:: x2
 integer:: x3
 integer:: x4
end type
type(x),bind(c):: v1
type,bind(c):: y
 integer:: x1
 integer:: x2
 integer:: x3
 integer:: x4
 integer:: x5
end type
type(y),bind(c):: v2
contains
subroutine ss( w1 ,w2)
type(x),value:: w1
type(y),value:: w2

write(2,*) w1,w2
end subroutine
end
use m1
integer::k(9)
v1=x(1,2,3,4)
v2=y(11,12,13,14,15)
call ss( v1 , v2)
rewind 2
read(2,*) k
if (any(k/=[1,2,3,4,11,12,13,14,15])) print *,10
print *,'pass'
end

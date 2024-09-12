                  module m1
                    type y
                       character(1000),allocatable::y1
                    end type
       contains
                subroutine s1(p1,p2)
                  type(y),pointer :: p1(:)
                  type(y),pointer :: p2(:)
write(1, '("1  ",z16.16)'),loc(p1(1)%y1)
write(1, '("2  ",z16.16)'),loc(p2(1)%y1)
p1=p2
write(1, '("11 ",z16.16)'),loc(p1(1)%y1)
write(1, '("12 ",z16.16)'),loc(p2(1)%y1)
                end
end

use m1
                  type(y),target  :: t (2)
                  type(y),pointer :: v1(:)
                  type(y),pointer :: v2(:)
     allocate(t(1)%y1)
     allocate(t(2)%y1)
                  t= y( '2'  )
if (t(1)%y1/='2') print *,101
v1=>t
v2=>t
call s1(v1,v2)
if (t(1)%y1/='2') print *,201
print *,'pass'
end

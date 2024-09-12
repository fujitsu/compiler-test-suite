                  module m1
                    type y
                       character(1000),allocatable::y1
                    end type
       contains
                subroutine s1(vv)
                  type(y),pointer :: vv(:)
                  vv= y( '2'  )
                end
end

use m1
                  type(y),pointer :: vv(:)
allocate(vv(1))
                 allocate(vv(1)%y1)
call s1(vv)
if (vv(1)%y1/='2') print *,101
print *,'pass'
end

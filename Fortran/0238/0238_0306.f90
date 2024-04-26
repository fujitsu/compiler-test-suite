module m1
  type x0
     integer:: x01 
     character(:),allocatable:: x02(:)
  end type
end
subroutine s1
use m1
type (x0),allocatable::v1(:),v2(:)

allocate(v2(2))
v2%x01=1
allocate(character(2)::v2(1)%x02(2))
v2(1)%x02(1)='12345'
v2(1)%x02(2)='67890'

allocate(v2(2)%x02,source=['abc','def'])

if (v2(1)%x02(1)/='12') print *,1001
if (v2(1)%x02(2)/='67') print *,1002
if (len(v2(1)%x02)/=2) print *,1003
if (v2(2)%x02(1)/='abc') print *,1011
if (v2(2)%x02(2)/='def') print *,1012
if (len(v2(2)%x02)/=3) print *,1013

allocate( v1 ,source=v2) 
if (v1(1)%x02(1)/='12') print *,2001
if (v1(1)%x02(2)/='67') print *,2002
if (len(v1(1)%x02)/=2) print *,2003
if (v1(2)%x02(1)/='abc') print *,2011
if (v1(2)%x02(2)/='def') print *,2012
if (len(v1(2)%x02)/=3) print *,2013
if (v2(1)%x02(1)/='12') print *,3001
if (v2(1)%x02(2)/='67') print *,3002
if (len(v2(1)%x02)/=2) print *,3003
if (v2(2)%x02(1)/='abc') print *,3011
if (v2(2)%x02(2)/='def') print *,3012
if (len(v2(2)%x02)/=3) print *,3013

deallocate(v2)
if (v1(1)%x02(1)/='12') print *,4001
if (v1(1)%x02(2)/='67') print *,4002
if (len(v1(1)%x02)/=2) print *,4003
if (v1(2)%x02(1)/='abc') print *,4011
if (v1(2)%x02(2)/='def') print *,4012
if (len(v1(2)%x02)/=3) print *,4013

end
call s1
print *,'pass'
end

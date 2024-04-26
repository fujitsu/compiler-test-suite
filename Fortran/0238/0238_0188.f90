module m1
  type x0
     character(:),allocatable :: x02(:)
  end type
end
subroutine s1
use m1
type (x0),allocatable::v1,v2

allocate(v2)
allocate(character(2)::v2%x02(2))
v2%x02(1)='11'
v2%x02(2)='22'
if (len(v2%x02)/=2) print *,801

allocate( v1 ,source=v2) 

if (v1%x02(1)/='11') print *,101
if (v1%x02(2)/='22') print *,102
if (v2%x02(1)/='11') print *,103
if (v2%x02(2)/='22') print *,104
if (len(v2%x02)/=2) print *,802
if (len(v1%x02)/=2) print *,803

v2%x02(1)='aa'
v2%x02(2)='bb'
if (v1%x02(1)/='11') print *,201
if (v1%x02(2)/='22') print *,202
if (v2%x02(1)/='aa') print *,203
if (v2%x02(2)/='bb') print *,204

deallocate (v2%x02)
if (allocated(v2%x02)) print *,301

end
call s1
print *,'pass'
end

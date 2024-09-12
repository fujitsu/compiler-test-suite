module m1
character(:),allocatable::a1
character(:),allocatable::a2(:,:)
type x
 integer(8)::x1
 character(:),allocatable::a1
 character(:),allocatable::a2(:,:)
end type
type(x)::v
 contains
subroutine s2
if (allocated(a1).or.  allocated(a2).or. &
    allocated(v%a1).or.  allocated(v%a2)) then
      print *,'error'
a1(:)='12'
a2(:,:)=reshape((/'34','56','78','9a','bc','cd'/),(/3,2/))
v%a1(:)='12'
v%a2(:,:)=reshape((/'34','56','78','9a','bc','cd'/),(/3,2/))
if (a1/='12')print *,1,a1
if (len(a1)/=2)print *,2,len(a1)
if (.not.allocated(a1))print *,3
if (a2(3,2)/='cd')print *,11,a2(3,2)
if (a2(3,2)(:)/='cd')print *,11,a2(3,2)
if (any(a2/=reshape((/'34','56','78','9a','bc','cd'/),(/3,2/))))print *,12,a2
if (len(a2)/=2)print *,13,len(a2)
if (.not.allocated(a2))print *,3
if (v%a1/='12')print *,1,v%a1
if (len(v%a1)/=2)print *,2,len(v%a1)
if (.not.allocated(v%a1))print *,3
if (v%a2(3,2)/='cd')print *,11,v%a2(3,2)
if (v%a2(3,2)(:)/='cd')print *,11,v%a2(3,2)
if (any(v%a2/=reshape((/'34','56','78','9a','bc','cd'/),(/3,2/))))print *,12,v%a2
if (len(v%a2)/=2)print *,13,len(v%a2)
if (.not.allocated(v%a2))print *,3
else
if (allocated(a1))print *,31
if (allocated(a2))print *,32
if (allocated(v%a1))print *,33
if (allocated(v%a2))print *,34
end if
end subroutine
end
subroutine s1
use m1
call s2
end
call s1
print *,'pass'
end

module m1
  type x
    integer,allocatable,dimension(:)::p
  end type
 contains
  subroutine s1
    type(x):: v1
     allocate (v1%p(2))
     v1%p=(/1,2/)
     call z(size(v1%p))
     if (v1%p(1)/=1)print *,v1%p(1)
     if (v1%p(2)/=2)print *,v1%p(2)
  end subroutine
  subroutine s2
    type(x):: v2
     allocate (v2%p(2))
     v2%p=(/1,2/)
     call z(size(v2%p))
     if (v2%p(1)/=1)print *,v2%p(1)
     if (v2%p(2)/=2)print *,v2%p(2)
  end subroutine
  subroutine s3
    type(x),allocatable:: v3(:)
     allocate (v3(3))
     allocate (v3(3)%p(2))
     v3(3)%p=(/1,2/)
     call z(size(v3(3)%p))
     if (v3(3)%p(1)/=1)print *,v3(3)%p(1)
     if (v3(3)%p(2)/=2)print *,v3(3)%p(2)
  end subroutine
  subroutine s4
    type(x),allocatable:: v4(:)
     allocate (v4(3))
     allocate (v4(3)%p(2))
     v4(3)%p=(/1,2/)
     call z(size(v4(3)%p))
     if (v4(3)%p(1)/=1)print *,v4(3)%p(1)
     if (v4(3)%p(2)/=2)print *,v4(3)%p(2)
  end subroutine
  subroutine s5
    type(x):: v5(3)
     allocate (v5(3)%p(2))
     v5(3)%p=(/1,2/)
     call z(size(v5(3)%p))
     if (v5(3)%p(1)/=1)print *,v5(3)%p(1)
     if (v5(3)%p(2)/=2)print *,v5(3)%p(2)
  end subroutine
  subroutine s6
    type(x):: v6(3)
     allocate (v6(3)%p(2))
     v6(3)%p=(/1,2/)
     call z(size(v6(3)%p))
     if (v6(3)%p(1)/=1)print *,v6(3)%p(1)
     if (v6(3)%p(2)/=2)print *,v6(3)%p(2)
  end subroutine
end
use m1
call s1
call s2
call s3
call s4
call s5
call s6
print *,'pass'
end
subroutine z(k)
integer k
if (k/=2)print *,1001,k
end 

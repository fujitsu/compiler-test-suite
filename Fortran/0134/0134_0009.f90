module m1
  type x
    integer,pointer,dimension(:)::p
  end type
 contains
  subroutine s1
    type(x):: v1
     allocate (v1%p(2))
     v1%p=(/1,2/)
     call z(v1%p)
     if (v1%p(1)/=2)print *,v1%p(1)
     if (v1%p(2)/=3)print *,v1%p(2)
  end subroutine
  subroutine s2
    type(x):: v2
     allocate (v2%p(2))
     v2%p=(/1,2/)
     call z(v2%p)
     if (v2%p(1)/=2)print *,v2%p(1)
     if (v2%p(2)/=3)print *,v2%p(2)
  end subroutine
  subroutine s3
    type(x):: v3(2,3)
     k2=2;k3=3
     allocate (v3(k2,k3)%p(2))
     v3(k2,k3)%p=(/1,2/)
     call z(v3(k2,k3)%p)
     if (v3(k2,k3)%p(1)/=2)print *,v3(k2,k3)%p(1)
     if (v3(k2,k3)%p(2)/=3)print *,v3(k2,k3)%p(2)
  end subroutine
  subroutine s4
    type(x):: v4(2,3)
     k2=2;k3=3
     allocate (v4(k2,k3)%p(2))
     v4(k2,k3)%p=(/1,2/)
     call z(v4(k2,k3)%p)
     if (v4(k2,k3)%p(1)/=2)print *,v4(k2,k3)%p(1)
     if (v4(k2,k3)%p(2)/=3)print *,v4(k2,k3)%p(2)
  end subroutine
end
use m1
call s1
call s2
call s3
call s4
print *,'pass'
end
subroutine z(k)
integer k(2)
k=k+1
end 

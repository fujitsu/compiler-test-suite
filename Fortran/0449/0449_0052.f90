module km
integer,parameter::kh=1000
end
module m1
use km
  type x
     integer::x1=1
     integer,allocatable::x2(:)
  end type
contains
  ELEMENTAL FUNCTION f( d ) RESULT( r )
    TYPE(x), INTENT(IN) :: d
    TYPE(x) :: r
   r=d
   r%x1=r%x1+1
   r%x2=r%x2+1
  END FUNCTION
  subroutine s1
   type(x):: v(kh)
   do k=1,kh
   end do
   call s2(v)
   end subroutine
end

use m1
call s1
call chk(108)
print *,'pass'
end
  subroutine s2(v)
 use m1
   type(x):: v(kh)
   do k=1,kh
     allocate( v(k)%x2(10),source=2)
     v(k)= f(v(k))
     write(108,'(z16.16)') loc( v(k)% x2 )
     if (any(v(k)% x2/=2+1)) print *,200
     if (v(k)% x1/=1+1) print *,201
     deallocate( v(k)%x2)
   end do
  end subroutine
subroutine chk(n)
use km
character(16):: c,cc(100)
k=0
rewind n
do nn=1,kh
 read(n,'(a)') c
 do kk=1,k
   if (cc(kk)==c) then
     goto 2
   endif
 end do
 k=k+1
 if (k>100) then
    print *,'Eroor memory leak ',n
    return
 endif
 cc(k)=c
2 continue
end do
end

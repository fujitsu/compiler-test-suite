module m1
integer::k
  contains
    subroutine s1(n)
type x
integer::x1
      type(x),pointer::next
      integer,pointer::p1(:,:),p2(:,:),p3(:,:),p4(:,:)
end type
type(x),pointer::v
allocate(v)
allocate(v%next)
allocate(v%next%next)
k=n
      v%next%next%p1=>null()
      v%next%next%p2=>null()
      v%next%next%p3=>null()
      v%next%next%p4=>null()
    if (n==1) then
      allocate(v%next%next%p2(2,3))
      v%next%next%p2=reshape([1,2,3,4,5,6],[2,3])
      allocate(v%next%next%p4(2,3))
      v%next%next%p4=reshape([1,2,3,4,5,6],[2,3])
    endif
      call ss2(v%next%next%p1,v%next%next%p2,v%next%next%p3,v%next%next%p4)
      if (fs2(v%next%next%p1,v%next%next%p2,v%next%next%p3,v%next%next%p4)/=0) print *,104
    end subroutine
    subroutine ss2(w,x,y,z)
      integer,optional:: w(6),x(6),y(6),z(6)
      if (present(w)) print *,1020
      if (present(x)) then
        if (any(x/=[1,2,3,4,5,6])) print *,21020
      else
        if (k==1)print *,1021
      endif
      if (present(y)) print *,1022
      if (present(z)) then
        if (any(z/=[1,2,3,4,5,6])) print *,21022
      else
        if (k==1)print *,1023
      endif
    end subroutine
    function   fs2(w,x,y,z) result(kk)
      integer,optional:: w(6),x(6),y(6),z(6)
      if (present(w)) print *,1030
      if (present(x)) then
        if (any(x/=[1,2,3,4,5,6])) print *,21030
      else
        if (k==1)print *,1031
      endif
      if (present(y)) print *,1032
      if (present(z)) then
        if (any(z/=[1,2,3,4,5,6])) print *,21032
      else
        if(k==1)print *,1033
      endif
      kk=0
    end function
end
use m1
call s1(1)
call s1(2)
print *,'pass'
end


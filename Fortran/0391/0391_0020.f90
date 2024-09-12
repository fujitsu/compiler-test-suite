module m1
integer::k
  contains
    subroutine s1(n)
type x
integer::x1
      integer,pointer::p1(:,:),p2(:,:),p3(:,:),p4(:,:)
end type
type(x),pointer::v
allocate(v)
k=n
      v%p1=>null()
      v%p2=>null()
      v%p3=>null()
      v%p4=>null()
    if (n==1) then
      allocate(v%p2(2,3))
      v%p2=reshape([1,2,3,4,5,6],[2,3])
      allocate(v%p4(2,3))
      v%p4=reshape([1,2,3,4,5,6],[2,3])
    endif
      call ss2(v%p1,v%p2,v%p3,v%p4)
      if (fs2(v%p1,v%p2,v%p3,v%p4)/=0) print *,104
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


module m1
  contains
    subroutine s1()
      integer,pointer::p1(:,:),p2(:,:),p3(:,:),p4(:,:)
      p1=>null()
      allocate(p2(2,3))
      p2=reshape([1,2,3,4,5,6],[2,3])
      p3=>null()
      allocate(p4(2,3))
      p4=reshape([1,2,3,4,5,6],[2,3])
      call ss2(p1,p2,p3,p4)
      if (fs2(p1,p2,p3,p4)/=0) print *,104
    end subroutine
    subroutine ss2(w,x,y,z)
      integer,optional:: w(6),x(6),y(6),z(6)
      if (present(w)) print *,1020
      if (present(x)) then
        if (any(x/=[1,2,3,4,5,6])) print *,21020
      else
        print *,1021
      endif
      if (present(y)) print *,1022
      if (present(z)) then
        if (any(z/=[1,2,3,4,5,6])) print *,21022
      else
        print *,1023
      endif
    end subroutine
    function   fs2(w,x,y,z) result(k)
      integer,optional:: w(6),x(6),y(6),z(6)
      if (present(w)) print *,1030
      if (present(x)) then
        if (any(x/=[1,2,3,4,5,6])) print *,21030
      else
        print *,1031
      endif
      if (present(y)) print *,1032
      if (present(z)) then
        if (any(z/=[1,2,3,4,5,6])) print *,21032
      else
        print *,1033
      endif
      k=0
    end function
end
use m1
call s1()
print *,'pass'
end


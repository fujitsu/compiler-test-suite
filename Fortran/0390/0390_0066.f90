module m1
  contains
    subroutine s1()
      integer,pointer::p1(:,:),p2(:,:),p3(:,:),p4(:,:)
      p1=>null()
      p2=>null()
      p3=>null()
      p4=>null()
      call ss2(p1,p2,p3,p4)
      if (fs2(p1,p2,p3,p4)/=0) print *,104
    end subroutine
    subroutine ss2(w,x,y,z)
      integer,optional:: w(6),x(6),y(6),z(6)
      if (present(w)) print *,1020
      if (present(x)) then
        print *,1021
      endif
      if (present(y)) print *,1022
      if (present(z)) then
        print *,1023
      endif
    end subroutine
    function   fs2(w,x,y,z) result(k)
      integer,optional:: w(6),x(6),y(6),z(6)
      if (present(w)) print *,1030
      if (present(x)) then
        print *,1031
      endif
      if (present(y)) print *,1032
      if (present(z)) then
        print *,1033
      endif
      k=0
    end function
end
use m1
call s1()
print *,'pass'
end


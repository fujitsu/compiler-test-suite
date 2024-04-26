module m1
  contains
    subroutine s1(p1,p2,p3,p4,n1,n2,n3,n4)
      integer,optional::p1(:,:),p2(:,:),p3(:,:),p4(:,:)
      call ss2(p1,p2,p3,p4,n1,n2,n3,n4)
      if (fs2(p1,p2,p3,p4,n1,n2,n3,n4)/=0) print *,104
    end subroutine
    subroutine ss2(w,x,y,z,n1,n2,n3,n4)
      integer,optional:: w(6),x(6),y(6),z(6)
    if (n1==0) then
      if (present(w)) print *,1020
    else
      if (.not.present(w)) print *,31020
      if (any(w/=[1,2,3,4,5,6])) print *,3020
    endif
    if (n2==0) then
      if (present(x)) then
        print *,1021
      endif
    else
      if (.not.present(x)) print *,31022
      if (any(x/=[1,2,3,4,5,6])) print *,30211
    endif
    if (n3==0) then
      if (present(y)) print *,1022
    else
      if (.not.present(y)) print *,41020
      if (any(y/=[1,2,3,4,5,6])) print *,43020
    endif
    if (n4==0) then
      if (present(z)) then
        print *,1023
      endif
    else
      if (.not.present(z)) print *,51020
      if (any(z/=[1,2,3,4,5,6])) print *,53020
    endif
    end subroutine
    function   fs2(w,x,y,z,n1,n2,n3,n4) result(k)
      integer,optional:: w(6),x(6),y(6),z(6)
      k=0
    if (n1==0) then
      if (present(w)) print *,61020
    else
      if (.not.present(w)) print *,61020
      if (any(w/=[1,2,3,4,5,6])) print *,63020
    endif
    if (n2==0) then
      if (present(x)) then
        print *,61021
      endif
    else
      if (.not.present(x)) print *,61022
      if (any(x/=[1,2,3,4,5,6])) print *,60211
    endif
    if (n3==0) then
      if (present(y)) print *,61022
    else
      if (.not.present(y)) print *,61020
      if (any(y/=[1,2,3,4,5,6])) print *,63020
    endif
    if (n4==0) then
      if (present(z)) then
        print *,61023
      endif
    else
      if (.not.present(z)) print *,61020
      if (any(z/=[1,2,3,4,5,6])) print *,63020
    endif
    end function
end
use m1
integer::p1(2,3),p2(2,3),p3(2,3),p4(2,3)
p1=reshape([1,2,3,4,5,6],[2,3])
p2=reshape([1,2,3,4,5,6],[2,3])
p3=reshape([1,2,3,4,5,6],[2,3])
p4=reshape([1,2,3,4,5,6],[2,3])

call s1(            n1=0,n2=0,n3=0,n4=0)
call s1(p1=p1,      n1=1,n2=0,n3=0,n4=0)
call s1(p1=p1,      p3=p3,n1=1,n2=0,n3=1,n4=0)
call s1(p1=p1,p2=p2,n1=1,n2=1,n3=0,n4=0)
call s1(p2=p2,p3=p3,p4=p4,n1=0,n2=1,n3=1,n4=1)
call s1(p3=p3,            n1=0,n2=0,n3=1,n4=0)
call s1(p4=p4,            n1=0,n2=0,n3=0,n4=1)
call s1(p4=p4,p3=p3,      n1=0,n2=0,n3=1,n4=1)
call s1(p1,p2,p3,p4,n1=1,n2=1,n3=1,n4=1)
print *,'pass'
end


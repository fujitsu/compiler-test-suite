module mod
contains
recursive function jfun(ii) result(ians)
do iii=1,1
if (ii.eq.1) then
    ians= jfun1(10)
    ians= jfun1(10)
    ians= jfun1(10)
    ians= jfun1(10)
    return
end if
end do
10 ians=ii
return
contains
recursive function jfun1(ii) result(ians)
ians=ii
if (1.eq.2) ians= jfun1(10)
return
end function
recursive function jfun2(ii) result(ians)
ians=ii
if (1.eq.2) ians= jfun1(10)
return
end function
end function
end

use mod
integer arr(10)
do i=1,10
 arr(i)=jfun(i)
 call subbb()
 call subbb1()
 call subbb2()
 call subbb3()
end do
if (all(arr.ne.(/10,2,3,4,5,6,7,8,9,10/))) write(6,*) "NG"

print *,"pass"
contains
subroutine subbb()
arr(i)=jfun(i)
end subroutine
subroutine subbb1()
arr(i)=jfun(i)
end subroutine
subroutine subbb2()
arr(i)=jfun(i)
end subroutine
subroutine subbb3()
arr(i)=jfun(i)
end subroutine
end

recursive function jfun(ii) result(ians)
if (ii.eq.1) then
    ians= jfun1(10)
    ians= jfun1(10)
    ians= jfun1(10)
    ians= jfun1(10)
    return
end if
10 ians=ii
return
contains
recursive function jfun1(ii) result(ians)
ians=ii
if (1.eq.2) ians= jfun1(10)
return
end function
recursive function jfun2(ii) result(ians)
ians=ii
if (1.eq.2) ians= jfun1(10)
return
end function
end function

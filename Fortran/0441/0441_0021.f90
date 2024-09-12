subroutine s1
interface
function   ss2(n)
intent(in):: n
end function
end interface
if ( ss1(1)/=0) print *,101
if ( ss2(1)/=0) print *,101
end

pure function   ss1(n)
intent(in):: n
ss1=0
if (n/=1) ss1=1
end function

pure function   ss2(n)
intent(in):: n
ss2=0
if (n/=1) ss2=1
end function
call s1
print *,'pass'
end

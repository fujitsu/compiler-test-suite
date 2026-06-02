IMPLICIT NONE
character(2)::x(2)
integer :: n(2),ik
n=2
associate( k=> n)
  block
    x=[character(size((/(k,ik=1,1,1)/)))::'12345','a']
    if (len(x)/=2) print *,1001
    if (x(1)/='12') print *,801,x(1)
    if (x(2)/='a') print *,802
    if (size(x)/=2) print *,1102
  end block
end associate
print *,'pass'
end

IMPLICIT NONE
character(2)::x(2)
integer :: n
n=2
associate( k=> 2)
  block
    x=[character(int(k))::'12345','a']
    if (len(x)/=2) print *,1001
    if (x(1)/='12') print *,801
    if (x(2)/='a') print *,802
    if (size(x)/=2) print *,1102
  end block
end associate
print *,'pass'
end

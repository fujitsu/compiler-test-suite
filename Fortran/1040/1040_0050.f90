module m1
 contains
  function f1(r) 
    integer r(:)
    integer f1(size(r))
    f1(1)=1
    f1(2)=2
  end function
end 
subroutine sub(j)
use m1
integer x(j),y(2)
x=f1(x)
if (any(x/=(/1,2/)))print *,'error'
y=f1(y)
if (any(x/=(/1,2/)))print *,'error2'
end
call sub(2)
print *,'pass'
end

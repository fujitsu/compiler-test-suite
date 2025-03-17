module m1
contains
  function f1() 
    integer f1(2)
    f1(1)=1
    f1(2)=2
  end function
end
use m1
integer x(2)
x=f1()
if (any(x/=(/1,2/)))print *,'error'
print *,'pass'
end

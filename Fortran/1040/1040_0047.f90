  function f1(i) 
    integer f1(i)
    f1(1)=1
    f1(2)=2
  end function
interface
  function f1(i) 
    integer f1(i)
  end function
end interface
integer x(2)
x=f1(2)
if (any(x/=(/1,2/)))print *,'error'
print *,'pass'
end

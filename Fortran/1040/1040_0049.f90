subroutine sub(j)
interface
  function f1(r) 
    integer r(:)
    integer f1(size(r))
  end function
end interface
integer x(j)
x=f1(x)
if (any(x/=(/1,2/)))print *,'error'
end
  function f1(r) 
    integer r(:)
    integer f1(size(r))
    f1(1)=1
    f1(2)=2
  end function
call sub(2)
print *,'pass'
end

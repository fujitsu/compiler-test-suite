interface 
  function p() 
    real,pointer::p
  end function
end interface
call sub(p)
print *,'pass'
end
subroutine sub(x)
interface 
  function x() 
    real,pointer::x
  end function
end interface
if (abs(x()-2.)>0.001)print *,'error-1'
end
  function p() 
    real,pointer::p
    allocate(p);p=2.
  end function

interface 
  function f()
        pointer ::f
  end function
end interface
procedure(f),pointer::p1
procedure(f),pointer::p2
p1=>f
  call       foo(p1,p2)
  if (abs(p2()-2)>0.001)print *,'error-2'
  print *,'pass'
contains
  subroutine foo(p1,p2)
    procedure(f),pointer::p1
    procedure(f),pointer::p2
  if (abs(p1()-2)>0.001)print *,'error-1'
    p2=>p1
  end subroutine
end
  function f()
        pointer ::f
        allocate(f)
        f=2.
  end function

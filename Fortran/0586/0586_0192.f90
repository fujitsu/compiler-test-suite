
intrinsic sin
  external :: E1
  external :: E2
  external:: myfunction
  external:: mysubxxx
  procedure(),pointer::ptr4=>E1
  procedure(),pointer::ptr5=>E2
  procedure(),pointer::ptr6=>myfunction
  procedure(),pointer::ptr7=>mysubxxx
call sub3
 contains 
  subroutine sub3
    call ptr5(1.0)
    call ptr7(1.0)
  end subroutine 
end

function myfunction(x) result(r)
  real, intent(in) :: x
  real             :: r
  ENTRY E1(x)
  r = sin(x)
  print*,"PASS fun"
end function

subroutine mysubxxx(x)
  real, intent(in) :: x
  ENTRY E2(x) 
  if(sin(x).ne.sin(1.0))print*,"201"
  print*,"PASS SUB"
end subroutine

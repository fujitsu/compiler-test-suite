interface
 function func01()
  integer :: func01
 end function
 function func02()
  real :: func02
 end function
 subroutine sub01()
 end subroutine
end interface

call csub01(func01)
call csub02(func02)
call csub03(sub01)

print *,'pass'

contains
 subroutine csub01(dfunc01)
  interface
   function dfunc01()
    integer :: dfunc01
   end function
   function dfunc02()
    real :: dfunc02
   end function
   subroutine dsub01()
   end subroutine
  end interface
 end subroutine
 subroutine csub02(dfunc02)
  interface
   function dfunc01()
    integer :: dfunc01
   end function
   function dfunc02()
    real :: dfunc02
   end function
   subroutine dsub01()
   end subroutine
  end interface
 end subroutine
 subroutine csub03(dsub01)
  interface
   function dfunc01()
    integer :: dfunc01
   end function
   function dfunc02()
    real :: dfunc02
   end function
   subroutine dsub01()
   end subroutine
  end interface
 end subroutine
end

function func01()
 integer :: func01
 func01 = 1
end function

function func02()
 real :: func02
 func02 = 2.0
end function

subroutine sub01()
end subroutine

function dfunc01()
 integer :: dfunc01
 dfunc01 = 11
end function

function dfunc02()
 real :: dfunc02
 dfunc02 = 12.0
end function

subroutine dsub01()
end subroutine

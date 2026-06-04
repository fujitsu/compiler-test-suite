function a ()
  a = 1.0
end function
function b ()
  b = 2.0
end function
subroutine proc()
  print *,'proc'
end subroutine

module mod
interface
  function fun1()
  end function
end interface
procedure(fun1):: a
contains
subroutine msub()
  if ( 1.0 .ne. a()) print *,'fail'
end subroutine
end module

module mod1
  contains
  subroutine msub1
    interface
      function fun2()
      end function
    end interface
    procedure(fun2):: a
    if ( 1.0 .ne. a() ) print *,'fail'
  end subroutine 
end module

subroutine sub
interface
  function fun3()
  end function
end interface
procedure(fun3):: a
if ( 1.0 .ne. a() ) print *,'fail'
end subroutine

subroutine sub1
  if ( 1.0 .ne. sub1fun1() ) print *,'fail'
  contains
  function sub1fun1()
    interface
      function fun4()
      end function
    end interface
    procedure(fun4):: a
    if ( 1.0 .ne. a() ) print *,'fail'
    sub1fun1 = 1.0
  end function
end subroutine

subroutine sub2
  procedure(fun5):: a
  interface
    function fun5()
    end function
  end interface
  if ( 1.0 .ne. a() ) print *,'fail'
end subroutine

module mod2
  procedure(efun5):: a
  contains
  function sub3()
    sub3 = a()
    entry efun5()
    efun5 = a()
  end function
end module

module mod3
use mod, only: fun1
end

module mod4
use mod3
procedure(fun1):: b
contains
subroutine msub4()
  if ( 2.0 .ne. b() ) print *,'fail'
end subroutine
end

module mod5
use mod3,only: fun2=>fun1 
procedure(fun2):: a
contains
subroutine msub5()
  if ( 1.0 .ne. a() ) print *,'fail'
end subroutine
end

module mod6
use mod1, only: msub1
procedure(msub1),pointer:: xxx
end

use mod
use mod1
use mod2
use mod4
call sub
call sub1
call sub2
call msub
call msub1
call msub4
if ( 1.0 .ne. sub3() ) print *,'fail'
if ( 1.0 .ne. efun5() ) print *,'fail'
call subsub()
print *,'pass '
contains
subroutine subsub
  procedure(subsub),pointer:: yyy
  procedure(subsub) :: proc
  yyy=>proc
  call yyy()
end subroutine
end

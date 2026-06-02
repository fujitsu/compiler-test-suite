subroutine a()
end subroutine
function a1()
  a1 = 1
end function
function a2()
  a2 = 2
end function
function a3()
  a3 = 3
end function
function a4()
  a4 = 4
end function
function a5()
  a5 = 5
end function
function a6()
  a6 = 6
end function

module mod
interface
function fun1()
end function
end interface
procedure(fun1):: a1
end module

module mod1
contains
subroutine msub1
interface
function fun2()
end function
end interface
procedure(fun2):: a2
if ( 2.0 .ne. a2()) print *,'fail'
end subroutine 
end module

subroutine sub
interface
function fun3()
end function
end interface
procedure(fun3):: a3
  if ( 3.0 .ne. a3()) print *,'fail'
end subroutine

subroutine sub1
contains
function fun1()
interface
function fun4()
end function
end interface
procedure(fun4):: a4
if ( 4.0 .ne. a4()) print *,'fail'
fun1 = 10
end function
end subroutine

subroutine sub2
procedure(fun5):: a5
interface
function fun5()
end function
end interface
if ( 5.0 .ne. a5()) print *,'fail'
end subroutine

module mod2
procedure(efun6):: a
contains
subroutine sub3
entry efun6
end subroutine
end module

module mod3
use mod, only: fun1
end

module mod4
use mod3
procedure(fun1):: a1
end

module mod5
use mod3,only: fun2=>fun1 
procedure(fun2):: a2
contains 
subroutine msub05()
  if ( 2 .ne. a2()) print *,'fail'
end subroutine
end

module mod6
use mod1, only: msub1
procedure(msub1),pointer:: xxx
end

use mod
use mod1
use mod2
use mod5
call sub1
call sub2
call sub3
call msub05
print *,'pass '
contains
subroutine subsub
procedure(subsub),pointer:: yyy
end subroutine
end

module mod

implicit none

type :: t_context
     integer :: i
     procedure(fun_abstract1),pointer,nopass  :: g3
     procedure(fun_abstract2),pointer,nopass  :: g4
     procedure(proc_abstract),pointer,nopass  :: g5
 end type t_context

   abstract interface
     integer(kind=8) function fun_abstract1(ctx)
       import t_context
       type(t_context), intent(inout) :: ctx
     end function fun_abstract1
     integer(kind=8) function fun_abstract2(k, ctx)
       import t_context
       type(t_context), intent(inout) :: ctx
       integer, intent(in) :: k
     end function fun_abstract2
     subroutine proc_abstract(ctx, k, n)
       import t_context
       type(t_context), intent(inout) :: ctx
       integer, intent(in) :: k
       integer, intent(out) :: n
     end subroutine proc_abstract
   end interface

 public :: f1, f2
 contains
  integer(kind=8) function f1(c)
     type(t_context), intent(inout) :: c

     f1= c%i
  end function f1

  integer(kind=8) function f2(k,c)  
     type(t_context), intent(inout) :: c
     integer, intent(in) :: k

     f2= k+c%i
  end function f2

  subroutine sub3(c,k,n)  
     type(t_context), intent(inout) :: c
     integer, intent(in) :: k
     integer, intent(out) :: n

     n = k+c%i

  end subroutine sub3
end  module mod





program main
use mod
implicit none
type(t_context) :: c,x
integer :: nn
c%i=1
x%i=1
c%g3=>f1
c%g4=>f2
c%g5=>sub3

if (c%g3(c)==1) then

else
   print *,'error-1' 
endif

if (c%g3(x)==1)then

else
   print *,'error-g3' 
endif

if (c%g4(0,c)==1) then 

else
   print *,'error-g4'
endif

call c%g5(c,0,nn)
if (nn == 1) then 

else
   print *,'error-g5'
endif
print *,'pass'
end program



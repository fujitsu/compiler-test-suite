module type_module
 implicit none
  type test_type
   procedure(fun_interface), nopass, pointer :: fun_ptr
   procedure(sub_interface), nopass, pointer :: sub_ptr
  end type test_type
 abstract interface
  function fun_interface(n,x) result(f)
   integer, intent(in) :: n
   double precision, intent(in) :: x(n)
   double precision :: f(n)
  end function fun_interface
  subroutine  sub_interface(n,x,f)
   integer, intent(in) :: n
   double precision, intent(in) :: x(n)
   double precision :: f(n)
  end subroutine sub_interface
 end interface

 contains
  subroutine  test_type_constructor(test, fun,sub)
   interface
    function fun(n,x) result(f)
     integer, intent(in) :: n
     double precision, intent(in) :: x(n)
     double precision :: f(n)
    end function fun
    subroutine  sub(n,x,f)
     integer, intent(in) :: n
     double precision, intent(in) :: x(n)
     double precision :: f(n)
    end subroutine sub
   end interface
   type(test_type) :: test
   test%fun_ptr => fun
   test%sub_ptr => sub
   end subroutine test_type_constructor
end module type_module

program main
 use type_module
 type(test_type) :: test
 integer :: n =2
 double precision :: x(2), f(2)
 procedure(fun1) :: pfun1
 procedure(sub1) :: psub1

 call test_type_constructor (test, pfun1,psub1)
 x = (/-1.d0, 1.d0/)
 f = 0.d0
 call  test%sub_ptr(n,x,f)

 if (f(1).eq.0) print *,'error f'

 f = test%fun_ptr(n,x)

 if (f(1).eq.0) print *,'error f'

 print *,'pass'

 contains
  function fun1 (n,x ) result (f )
   integer, intent(in) :: n
   double precision, intent(in) :: x(n)
   double precision :: f(n)
   f = 2.0*x
   call  sub1(n,x,f)
  end function fun1
  subroutine sub1(n,x,f)
   integer, intent(in) :: n
   double precision, intent(in) :: x(n)
   double precision :: f(n)
   f = 2.0*x
  end subroutine sub1
end program

function pfun1 (n,x ) result (f )
 integer, intent(in) :: n
 double precision, intent(in) :: x(n)
 double precision :: f(n)
 f = 2.0*x
 call  sub1(n,x,f)
 contains
  subroutine sub1(n,x,f)
   integer, intent(in) :: n
   double precision, intent(in) :: x(n)
   double precision :: f(n)
   f = 2.0*x
  end subroutine sub1
end function pfun1

subroutine psub1(n,x,f)
 integer, intent(in) :: n
 double precision, intent(in) :: x(n)
 double precision :: f(n)
 f = 2.0*x
end subroutine psub1

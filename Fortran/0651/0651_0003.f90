
      module mod1
      type t
        sequence
        integer :: i
        character(len=2) :: c
      end type
interface gen
module procedure fun1
end interface
contains
      function fun1(x)
      type (t) :: fun1, x
      print*, "FUN1", x
      fun1%i = -x%i
      fun1%c = x%c(1:1)//"1"
      end function fun1
      end

      module mod2
      type t
        sequence
        integer :: i
        character(len=2) :: c
      end type
interface gen
module procedure fun2
end interface
contains
      function fun2(x)
      type (t) :: fun2, x
      print*, "FUN2", x
      fun2%i = -x%i
      fun2%c = x%c(1:1)//"2"
      end function fun2
      end

      subroutine test1
      use mod2
      use mod1,t1=>t
      if (1.eq.2) print*, fun1(t1(1,"OO"))
      if (1.eq.2) print*, fun2(t1(1,"OO"))
      if (1.eq.2) print*, fun1(t(1,"OO"))
      if (1.eq.2) print*, fun2(t(1,"OO"))
      end

      call test1
      print*,"pass"
      end

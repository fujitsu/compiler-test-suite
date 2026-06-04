     module mod
       type :: c
          character(:),allocatable::n2
       end type

       type :: b
         integer(8)::d
          character(:),allocatable::n1
          type(c):: cc
       end type

       type, extends(b) :: ext
         integer(8)::dd
       end type

     contains

       subroutine s1(var, value)
         class(b), allocatable, intent(inout) :: var
         class(b), intent(in) :: value
         var=value
       end subroutine s1
     end module mod

     use mod
     class(b), allocatable :: var
     type(ext), allocatable :: value
     integer(8)::k1,k2,k3,k4
     allocate(value)
     allocate(value%n1,source='11')
     allocate(value%cc%n2,source='11')
     call s1(var, value) 
     k=0
     select type(var)
     type is(ext)
       var%n1(:)='22'
       var%cc%n2(:)='22'
       k1=loc(var%n1)
       k3=loc(var%cc%n2)
       k=1
     end select
     if (k/=1) print *,1002
     if (value%n1(:)/='11') print *,1001
     if (value%cc%n2(:)/='11') print *,10013
       k2=              loc(value%n1)
       k4=              loc(value%cc%n2)
     if (k1==k2) print *,2002
     if (k3==k4) print *,20023
     print *,'sngg029q : pass'
     end 


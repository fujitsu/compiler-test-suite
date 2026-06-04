     module mod
       type :: c
          character(:),allocatable::n2(:)
       end type

       type :: b
         integer(8)::d
          character(:),allocatable::n1(:)
          type(c):: cc(2)
       end type

       type, extends(b) :: ext
         integer(8)::dd
       end type

     contains

       subroutine s1(var, value)
         class(b), allocatable, intent(inout) :: var(:)
         class(b), intent(in) :: value(:)
         allocate(var, source=value)
       end subroutine s1
     end module mod

     use mod
     class(b), allocatable :: var(:)
     type(ext), allocatable :: value(:)
     integer(8)::k1,k2,k3,k4
     allocate(value(2))
     allocate(value(2)%n1(2),source='11')
     allocate(value(2)%cc(2)%n2(2),source='11')
     call s1(var, value) 
     k=0
     select type(var)
     type is(ext)
       var(2)%n1(:)='22'
       var(2)%cc(2)%n2(:)='22'
       k1=loc(var(2)%n1)
       k3=loc(var(2)%cc(2)%n2)
       k=1
     end select
     if (k/=1) print *,1002
     if (any(value(2)%n1(:)/='11')) print *,1001
     if (any(value(2)%cc(2)%n2(:)/='11')) print *,10013
       k2=              loc(value(2)%n1)
       k4=              loc(value(2)%cc(2)%n2)
     if (k1==k2) print *,2002
     if (k3==k4) print *,20023
     print *,'sngg018q : pass'
     end 


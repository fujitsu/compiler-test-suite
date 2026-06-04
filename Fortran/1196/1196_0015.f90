     module mod
       type g
          character(:),allocatable::n3
       end type
       type,extends(g)::ge
         integer(8)::d3
       end type
       type :: d
          character(:),allocatable::n2
          class(g),allocatable::gv
       end type
       type :: c
          integer(8)::d2
          type(d)::dd
       end type

       type :: b
         integer(8)::d
          character(:),allocatable::n1
          type(c):: cc
       end type
       type, extends(b) :: ext
         integer(8)::de
       end type

     contains

       subroutine s1(var, value)
         class(b), allocatable, intent(inout) :: var
         class(b), intent(in) :: value
         allocate(var, source=value)
       end subroutine s1
     end module mod

     use mod
     class(b), allocatable :: var
     type(ext), allocatable :: value
     integer(8)::k1,k2,k3,k4,k5,k6
     allocate(value)
     allocate(value%n1,source='11')
     allocate(value%cc%dd%n2,source='11')
     allocate(ge::value%cc%dd%gv)
     select type(p=>value%cc%dd%gv)
       type is(ge)
        allocate(p%n3,source='11')
     end select
         
     call s1(var, value) 
     k=0
     select type(var)
     type is(ext)
       var%n1(:)='22'
       var%cc%dd%n2(:)='22'
       k1=loc(var%n1)
       k3=loc(var%cc%dd%n2)
     select type(p=>var%cc%dd%gv)
       type is(ge)
        p%n3(:)='22'
       k5=loc(p%n3)
       k=1
     end select
     end select
     if (k/=1) print *,1002
     if (value%n1(:)/='11') print *,1001
     if (value%cc%dd%n2(:)/='11') print *,10013
       k2=              loc(value%n1)
       k4=              loc(value%cc%dd%n2)
     select type(p=>value%cc%dd%gv)
       type is(ge)
     if (p%n3(:)/='11') print *,1501
       k6=              loc(p%n3)
     end select
 
     if (k1==k2) print *,2002
     if (k3==k4) print *,20023
     if (k5==k6) print *,20223
     print *,'sngg021q : pass'
     end 


     module mod
       type g
         integer(8)::d3
          character(:),allocatable::n3(:)
       end type
       type,extends(g)::ge
         integer(8)::d31
       end type
       type :: d
          character(:),allocatable::n2(:)
          class(g),allocatable::gv(:)
       end type
       type :: c
          integer(8)::d2
          type(d)::dd(2)
       end type

       type :: b
         integer(8)::d
          character(:),allocatable::n1(:)
          type(c):: cc(2)
       end type
       type, extends(b) :: ext
         integer(8)::dddx
       end type

     contains

       subroutine s1(var, value)
         class(b), allocatable, intent(inout) :: var(:)
         class(b), intent(in) :: value(:)
         var=value
       end subroutine s1
     end module mod

     use mod
     class(b), allocatable :: var(:)
     type(ext), allocatable :: value(:)
     integer(8)::k1,k2,k3,k4,k5,k6
     allocate(value(2))
     allocate(value(2)%n1(2),source='11')
     allocate(value(2)%cc(2)%dd(2)%n2(2),source='11')
     allocate(ge::value(2)%cc(2)%dd(2)%gv(2))
     select type(p=>value(2)%cc(2)%dd(2)%gv)
       type is(ge)
        allocate(p(2)%n3(2),source='11')
     end select
         
     call s1(var, value) 
     k=0
     select type(var)
     type is(ext)
       var(2)%n1(:)='22'
       var(2)%cc(2)%dd(2)%n2(:)='22'
       k1=loc(var(2)%n1)
       k3=loc(var(2)%cc(2)%dd(2)%n2)
     select type(p=>var(2)%cc(2)%dd(2)%gv)
       type is(ge)
        p(2)%n3(:)='22'
       k5=loc(p(2)%n3)
       k=1
     end select
     end select
     if (k/=1) print *,1002
     if (value(2)%n1(2)/='11') print *,1001
     if (value(2)%cc(2)%dd(2)%n2(2)/='11') print *,10013
       k2=              loc(value(2)%n1)
       k4=              loc(value(2)%cc(2)%dd(2)%n2)
     select type(p=>value(2)%cc(2)%dd(2)%gv)
       type is(ge)
     if (p(2)%n3(2)/='11') print *,1501
       k6=              loc(p(2)%n3)
     end select
 
     if (k1==k2) print *,2002
     if (k3==k4) print *,20023
     if (k5==k6) print *,20223
     print *,'sngg023q : pass'
     end 


     module mod

       type :: z
          integer(8)::d2(2)
       end type
       type :: x
          type(z)::dg
          character(:),allocatable::n4(:)
       end type
       type :: y
          type(z)::dg
          type(x)::yx(2)
       end type
       type g
         integer(8)::d3
          character(:),allocatable::n3(:)
       end type
       type,extends(g)::ge
          type(z)::dg
       end type
       type :: d
          type(z):: zz
          character(:),allocatable::n2(:)
          class(g),allocatable::gv(:)
          type(y)::dy(2)
       end type
       type :: c
          type(z):: zz
          integer(8)::d2(4)
          type(d)::dd(2)
       end type

       type :: b
         integer(8)::d
          character(:),allocatable::n1(:)
          type(c):: cc(2)
       end type
       type, extends(b) :: ext
          type(z):: zz
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
     integer(8)::k1,k2,k3,k4,k5,k6,k7,k8
     allocate(value(2))
     allocate(value(2)%n1(2),source='11')
     allocate(value(2)%cc(2)%dd(2)%n2(2),source='11')
     allocate(ge::value(2)%cc(2)%dd(2)%gv(2))
     select type(p=>value(2)%cc(2)%dd(2)%gv)
       type is(ge)
        allocate(p(2)%n3(2),source='11')
     end select
     allocate(value(2)%cc(2)%dd(2)%dy(2)%yx(2)%n4(2),source='11')
         
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
     var(2)%cc(2)%dd(2)%dy(2)%yx(2)%n4='22'
     k7=loc(var(2)%cc(2)%dd(2)%dy(2)%yx(2)%n4)
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
     if ((value(2)%cc(2)%dd(2)%dy(2)%yx(2)%n4(2)/='11')) print *,70451
     k8=loc(value(2)%cc(2)%dd(2)%dy(2)%yx(2)%n4) 
 
     if (k1==k2) print *,2002
     if (k3==k4) print *,20023
     if (k5==k6) print *,20223
     if (k7==k8) print *,30223
     print *,'sngg035q : pass'
     end 


     module mod
       type z
           integer,allocatable::z1
       end type

       type :: base
       end type base

       type, extends(base) :: mid
         type(z)::w(2)
       end type
           
       type, extends(mid) :: ext
          character(:),allocatable::name
       end type ext

     contains

       subroutine s1(var, value)
         class(base), allocatable, intent(inout) :: var(:)
         class (base), intent(in) :: value(*) 
         allocate(var, source=value(1:1001:1000))
       end subroutine s1
     end module mod

     use mod
     class(base), allocatable :: var(:)
     type(ext), pointer     :: value(:)
     integer(8)::k1,k2
     allocate(value(1001))
     allocate(value(1)%name,source='11')
     allocate(value(1001)%name,source='22')
     call s1(var, value) 
     k=0
     select type(var)
     type is(ext)
       var(1)%name(:)='aa'
       var(2)%name(:)='bb'
       k1=loc(var(2)%name)
       k=1
     end select
     if (k/=1) print *,1002
     if (value(1)%name(:)/='11') print *,1001
     if (value(1001)%name(:)/='22') print *,1002
       k2=              loc(value(1001)%name)
     if (k1==k2) print *,2002
     print *,'sngg211p : pass'
     end program


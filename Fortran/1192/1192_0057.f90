     module mod
       type :: base
       end type base

       type, extends(base) :: ext
          class(base),allocatable::next
          character(:),allocatable::name
       end type ext

     contains

       subroutine s1(var, value)
         class(base), allocatable, intent(inout) :: var
         class(base), intent(in) :: value
         allocate(var, source=value)
       end subroutine s1
     end module mod

     use mod
     class(base), allocatable :: var
     type(ext), allocatable :: value
     integer(8)::k1,k2,k3,k4,k5,k6
     allocate(value)
     allocate(value%name,source='11')
     k2=              loc(value%name)
     allocate(ext::value%next)
     select type (x=>value%next)
     type is(ext)
       allocate(x%name,source='22')
       k4=              loc(x%name)
       allocate(ext::x%next)
       select type (y=>x%next)
         type is(ext)
         allocate(y%name,source='33')
         k6=              loc(y%name)
       end select
     end select

     call s1(var, value) 
     k=0
     select type(var)
     type is(ext)
       var%name(:)='aa'
       k1=loc(var%name)
       select type (x=>var%next)
        type is(ext)
          x%name(:)='bb'
          k3=loc(x%name)
          select type (y=>x%next)
            type is(ext)
            y%name(:)='cc'
            k5=loc(y%name)
            k=1
          end select
       end select
     end select
     if (k/=1) print *,1002
     if (k1==k2) print *,2002
     if (k3==k4) print *,2012
     if (k5==k6) print *,2022
     if (value%name(:)/='11') print *,1001
     select type (x=>value%next)
     type is(ext)
       if (x%name/='22')print *,8001
       select type (y=>x%next)
         type is(ext)
           if (y%name/='33')print *,8002
       end select
     end select
     print *,'sngg227p : pass'
     end program


     module mod
       type :: b
         integer(8):: zz(2)
         character(:),allocatable::name_3(:)
       end type

       type,extends(b) :: x_ty
         integer(8):: z
         character(:),allocatable::name_2(:)
       end type

       type :: base
       end type base

       type, extends(base) :: ext
          character(:),allocatable::name
          class(b),allocatable:: w(:)
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
     allocate(value%name,source='ok')
     allocate(x_ty::value%w(2))
     select type(p=>value%w(2))
     type is(x_ty)
       allocate(p%name_2(2),source='11')
       allocate(p%name_3(2),source='22')
     end select
     call s1(var, value) 
     k=0
     select type(var)
     type is(ext)
       var%name(:)='11'
       k1=loc(var%name)
       select type(p=>var%w(2))
        type is(x_ty)
         p%name_2(2)='aa'
         p%name_3(2)='bb'
         k3=loc(p%name_2)
         k5=loc(p%name_3)
         k=1
       end select
     end select
     if (k/=1) print *,1002
     if (value%name(:)/='ok') print *,1001
      k2=              loc(value%name)
     select type(p=>value%w(2))
     type is(x_ty)
       if (p%name_2(2)/='11') print *,1021
       if (p%name_3(2)/='22') print *,1121
       k4=loc(p%name_2)
       k6=loc(p%name_3)
     end select
     if (k1==k2) print *,2002
     if (k3==k4) print *,2003
     if (k5==k6) print *,2004
     print *,'sngg255p : pass'
     end program


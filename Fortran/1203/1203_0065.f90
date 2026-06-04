     module mod
       type :: base
       end type base

       type,extends(base) :: x_ty
         integer(8):: z
         character(:),allocatable::name_2(:)
       end type

       type, extends(base) :: ext
          character(:),allocatable::name
          class(base),allocatable:: w(:)
       end type ext

     contains

       subroutine s1(var, value)
         class(base), allocatable, intent(inout) :: var
         class(base), intent(in) :: value
         allocate(var, source=value)
       end subroutine s1
     end module mod

subroutine ss
     use mod
     class(base), allocatable :: var
     type(ext), allocatable :: value
     integer(8)::k1,k2,k3,k4
     allocate(value)
     allocate(value%name,source='ok')
     allocate(x_ty::value%w(2))
     select type(p=>value%w(2))
     type is(x_ty)
       allocate(p%name_2(2),source='11')
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
         k3=loc(p%name_2)
         k=1
       end select
     end select
     if (k/=1) print *,1002
     if (value%name(:)/='ok') print *,1001
      k2=              loc(value%name)
     select type(p=>value%w(2))
     type is(x_ty)
       if (p%name_2(2)/='11') print *,1021
       k4=loc(p%name_2)
     end select
     if (k1==k2) print *,2002
     if (k3==k4) print *,2003
end
do n=1,10
  call ss
end do
     print *,'sngg722q : pass'
     end program


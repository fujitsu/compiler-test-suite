     module mod
       type :: base
       end type base

       type, extends(base) :: ext
          character(:),allocatable::name
       end type ext

     contains

       subroutine s1(var, value)
         class(base), allocatable, intent(inout) :: var(:,:)
         class(base), intent(in) :: value
         allocate(var(2,3), source=value)
       end subroutine s1
     end module mod

     subroutine s
     use mod
     class(base), allocatable :: var(:,:)
     type(ext), allocatable :: value
     integer(8)::k1,k2
     allocate(value)
     allocate(value%name,source='ok')
     call s1(var, value) 
     value%name(:)='11'
     k=0
     select type(var)
     type is(ext)
       if (var(1,1)%name(:)/='ok') print *,9001
       if (var(2,3)%name(:)/='ok') print *,9002
       k1=loc(var(1,1)%name)
       k=1
     end select
     if (k/=1) print *,1002
       k2=              loc(value%name)
     if (k1==k2) print *,2002
     end 
     call s
     print *,'sngg776p : pass'
     end


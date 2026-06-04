     module mod
       type :: base
       end type base

       type, extends(base) :: ext
          character(:),allocatable::name
       end type ext
         class(base), allocatable :: var
         class(ext ), allocatable :: value

     contains

       subroutine s1()
         var=value
       end subroutine s1
     end module mod

     subroutine x
     use mod
     integer(8)::k1,k2
     allocate(value)
     allocate(value%name,source='ok')
     call s1
     k=0
     select type(var)
     type is(ext)
       var%name(:)='11'
       k1=loc(var%name)
       k=1
     end select
     if (k/=1) print *,1002
     if (value%name(:)/='ok') print *,1001
       k2=              loc(value%name)
     if (k1==k2) print *,2002
     end
     call x
     print *,'sngg615p : pass'
     end 


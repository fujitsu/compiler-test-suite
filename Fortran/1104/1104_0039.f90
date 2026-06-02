     module mod
       type :: base
       end type base

       type, extends(base) :: ext
          character(:),allocatable::name
       end type ext
         class(base), allocatable :: var
         class(base), allocatable :: value

     contains

       subroutine s1()
         var=value
       end subroutine s1
     end module mod

     subroutine x
     use mod
     integer(8)::k1,k2
     allocate(ext::value)
     select type(value)
      type is(ext)
        allocate(value%name,source='ok')
     end select
     call s1
     k=0
     select type(var)
     type is(ext)
       var%name(:)='11'
       k1=loc(var%name)
       k=1
     end select
     if (k/=1) print *,1002
     select type(value)
     type is(ext)
     if (value%name(:)/='ok') print *,1001
       k2=              loc(value%name)
     end select
     if (k1==k2) print *,2002
     end
     call x
     print *,'sngg616p : pass'
     end 


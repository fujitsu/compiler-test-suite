     module mod
       type :: base
       end type base

       type, extends(base) :: ext
          character(:),allocatable::name
       end type ext

       type dse
         integer(8)::d
         class(base), allocatable :: var
       end type
       type(dse)::v
     contains

       subroutine s1( value)
         class(base), intent(in) :: value
         v%var=value
       end subroutine s1
     end module mod

     use mod
     type(ext), allocatable :: value
     integer(8)::k1,k2
     allocate(value)
     allocate(value%name,source='ok')
     call s1(value) 
     k=0
     select type(p=>v%var)
     type is(ext)
       p%name(:)='11'
       k1=loc(p%name)
       k=1
     end select
     if (k/=1) print *,1002
     if (value%name(:)/='ok') print *,1001
       k2=              loc(value%name)
     if (k1==k2) print *,2002
     print *,'sngg779p : pass'
     end program


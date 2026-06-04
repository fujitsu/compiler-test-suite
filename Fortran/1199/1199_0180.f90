     module mod
       type :: base
       end type base

       type, extends(base) :: ext
          character(:),allocatable::name
       end type ext
type x
       class(base), pointer     :: var
end type
type(x)::v
     contains

       subroutine s1(value)
         class(base), intent(in) :: value
kk=1
         allocate(v%var, source=value,stat=kk)
if (kk/=0) print *,601
       end subroutine s1
     end module mod

subroutine s
     use mod
     type(ext), allocatable :: value
     integer(8)::k1,k2
     allocate(value)
     allocate(value%name,source='ok')
     call s1(value) 
     k=0
     select type(w=>v%var)
     type is(ext)
       w    %name(:)='11'
       k1=loc(w  %name)
       k=1
     end select
     if (k/=1) print *,1002
     if (value%name(:)/='ok') print *,1001
       k2=              loc(value%name)
     if (k1==k2) print *,2002
end
call s
     print *,'sngg323q : pass'
     end program


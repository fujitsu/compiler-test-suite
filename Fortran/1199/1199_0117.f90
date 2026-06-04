     module mod
       type :: b
       end type
       type, extends(b) :: e
          character(:),allocatable::name
       end type
       

       type :: base
       end type base
       type, extends(base) :: ext
          class(b),allocatable::bv
       end type ext
       type (ext ), pointer     :: var

     contains

       subroutine s1(value)
         type (ext), intent(in) :: value
         allocate(var, source=value)
       end subroutine s1
     end module mod

subroutine s
     use mod
     type(ext), allocatable :: value
     integer(8)::k1,k2
     allocate(value)
     allocate(e::value%bv)
     select type(p=>value%bv)
     type is(e)
       allocate(p%name,source='ok')
     end select
     call s1(value) 
     k=0
     !select type(var)
     !type is(ext)
       select type(p=>var%bv)
       type is(e)
       p%name(:)='11'
       k1=loc(p%name)
       k=1
     end select
     !end select
     if (k/=1) print *,1002
     select type(p=>value%bv)
     type is(e)
     if (p    %name(:)/='ok') print *,1001
       k2=              loc(p    %name)
     end select
     if (k1==k2) print *,2002
end
call s
     print *,'sngg260q : pass'
     end program


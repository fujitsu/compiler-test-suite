     module mod
       type :: b
       end type
       type, extends(b) :: e
          character(:),allocatable::name
       end type
       

       type :: base
       end type base
       type, extends(base) :: ext
          type (e),allocatable::bv
       end type ext
type x
       type (ext ), pointer     :: var
end type
type(x)::v

     contains

       subroutine s1(value)
         type (ext), intent(in) :: value
kk=1
         allocate(v%var, source=value,stat=kk)
if (kk/=0) print *,1071
       end subroutine s1
     end module mod

subroutine s
     use mod
     type(ext), allocatable :: value
     integer(8)::k1,k2
     allocate(value)
     allocate(e::value%bv)
     associate (p=>value%bv)
     !select type(p=>value%bv)
     !type is(e)
       allocate(p%name,source='ok')
     end associate 
     call s1(value) 
     k=0
     !select type(var)
     !type is(ext)
     associate (p=>v%var%bv)
       !select type(p=>v%var%bv)
       !type is(e)
       p%name(:)='11'
       k1=loc(p%name)
       k=1
     end associate 
     !end select
     !end select
     if (k/=1) print *,1002
     associate (p=>value%bv)
     !select type(p=>value%bv)
     !type is(e)
     if (p    %name(:)/='ok') print *,1001
       k2=              loc(p    %name)
     end associate 
     !end select
     if (k1==k2) print *,2002
end
call s
     print *,'sngg385q : pass'
     end program


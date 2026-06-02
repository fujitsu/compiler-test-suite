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
          class (*),allocatable::bv2
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
if (kk/=0) print *,601
       end subroutine s1
     end module mod

subroutine s
     use mod
     type(ext), allocatable :: value
     integer(8)::k1,k2
     allocate(value)
     allocate(e::value%bv)
     allocate(e::value%bv2)
     associate (p=>value%bv)
       allocate(p%name,source='ok')
     end associate 
     select type(p=>value%bv2)
     type is(e)
       allocate(p%name,source='ok')
     end select
     call s1(value) 
     k=0
     !select type(var)
     !type is(ext)
     associate (p=>v%var%bv)
       p%name(:)='11'
       k1=loc(p%name)
     end associate 
       select type(p=>v%var%bv2)
       type is(e)
       p%name(:)='11'
       k1=loc(p%name)
       k=1
     end select
     if (k/=1) print *,1002
     associate (p=>value%bv)
     if (p    %name(:)/='ok') print *,1001
       k2=              loc(p    %name)
     end associate 
     select type(p=>value%bv2)
     type is(e)
     if (p    %name(:)/='ok') print *,1002
       k2=              loc(p    %name)
     end select
     if (k1==k2) print *,2002
end
call s
     print *,'sngg384q : pass'
     end program


     module mod
       type :: b
       end type
       type, extends(b) :: e
          character(:),allocatable::name
       end type
       

       type :: base
          class (b),pointer    ::bv3
       end type base
       type, extends(base) :: ext
          type (e),pointer    ::bv
          class (b),allocatable::bv2
       end type ext
       class (base), pointer     :: var
       class (base), allocatable :: v2

     contains

       subroutine s1(value)
         class (base), intent(in) :: value
         allocate(var, v2,source=value)
       end subroutine s1
     end module mod

subroutine s
     use mod
     type(ext), allocatable :: value
     integer(8)::k1,k2
     allocate(value)
     allocate(e::value%bv)
     allocate(e::value%bv2)
     allocate(e::value%bv3)
     associate (p=>value%bv)
       allocate(p%name,source='ok')
     end associate 
     select type(p=>value%bv2)
     type is(e)
       allocate(p%name,source='ok')
     end select
     select type(p=>value%bv3)
     type is(e)
       allocate(p%name,source='ok')
     end select
     call s1(value) 
     k=0
     select type(var)
     type is(ext)
     associate (p=>var%bv)
       p%name(:)='11'
     end associate 
       select type(p=>var%bv3)
       type is(e)
       p%name(:)='11'
     end select
       select type(p=>var%bv2)
       type is(e)
       p%name(:)='11'
       k1=loc(p%name)
       k=1
     end select
     end select
     if (k/=1) print *,1002
     associate (p=>value%bv)
     if (p    %name(:)/='11') print *,1001
     end associate 
     select type(p=>value%bv3)
     type is(e)
     if (p    %name(:)/='11') print *,1003
     end select
     select type(p=>value%bv2)
     type is(e)
     if (p    %name(:)/='ok') print *,1002
       k2=              loc(p    %name)
     end select
     if (k1==k2) print *,2002
     k=0
     select type(v2)
     type is(ext)
     associate (p=>v2%bv)
     if (p    %name(:)/='11') print *,3001
     end associate 
       select type(p=>v2%bv3)
       type is(e)
     if (p    %name(:)/='11') print *,3002
     end select
       select type(p=>v2%bv2)
       type is(e)
     if (p    %name(:)/='ok') print *,3003
       k1=loc(p%name)
       k=1
     end select
     end select
     if (k/=1) print *,3302
     if (k1==k2) print *,2332
end
call s
     print *,'sngg271q : pass'
     end program


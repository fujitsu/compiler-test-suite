     module mod
       type :: b
       end type
       type, extends(b) :: e
          character(:),allocatable::name(:)
       end type
       

       type :: base
          class (b),pointer    ::bv3(:)
       end type base
       type, extends(base) :: ext
          type (e),allocatable::bv(:)
          class (b),pointer    ::bv2(:)
       end type ext
       class (base), pointer     :: var(:)
       class (base), allocatable :: v2(:)

     contains

       subroutine s1(value)
         class (base), intent(in) :: value(:)
         allocate(var, v2,source=value)
       end subroutine s1
     end module mod

subroutine s
     use mod
     type(ext), allocatable :: value(:)
     integer(8)::k1,k2
     allocate(value(2))
     allocate(e::value(2)%bv(2))
     allocate(e::value(2)%bv2(2))
     allocate(e::value(2)%bv3(2))
     associate (p=>value(2)%bv)
       allocate(p(2)%name(2),source='ok')
     end associate 
     select type(p=>value(2)%bv2)
     type is(e)
       allocate(p(2)%name(2),source='ok')
     end select
     select type(p=>value(2)%bv3)
     type is(e)
       allocate(p(2)%name(2),source='ok')
     end select
     call s1(value) 
     k=0
     select type(var)
     type is(ext)
     associate (p=>var(2)%bv)
       p(2)%name(:)='11'
     end associate 
       select type(p=>var(2)%bv3)
       type is(e)
       p(2)%name(:)='11'
     end select
       select type(p=>var(2)%bv2)
       type is(e)
       p(2)%name(:)='11'
       k1=loc(p(2)%name)
       k=1
     end select
     end select
     if (k/=1) print *,1002
     associate (p=>value(2)%bv)
     if (p(2)    %name(2)(:)/='ok') print *,1001
     end associate 
     select type(p=>value(2)%bv3)
     type is(e)
     if (p(2)    %name(2)(:)/='11') print *,1003
     end select
     select type(p=>value(2)%bv2)
     type is(e)
     if (p(2)    %name(2)(:)/='11') print *,1002
       k2=              loc(p(2)    %name)
     end select
     if (k1/=k2) print *,2002
     k=0
     select type(v2)
     type is(ext)
     associate (p=>v2(2)%bv)
     if (p (2)   %name(2)(:)/='ok') print *,3001
     end associate 
       select type(p=>v2(2)%bv3)
       type is(e)
     if (p(2)    %name(2)(:)/='11') print *,3002
     end select
       select type(p=>v2(2)%bv2)
       type is(e)
     if (p(2)    %name(2)(:)/='11') print *,3003
       k1=loc(p(2)%name)
       k=1
     end select
     end select
     if (k/=1) print *,3302
     if (k1/=k2) print *,2332
end
call s
     print *,'sngg274q : pass'
     end program


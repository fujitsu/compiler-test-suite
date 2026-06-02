     module mod
       type :: b
       end type
       type, extends(b) :: e
          character(:),allocatable::name(:)
       end type
       

       type :: base
          class (*),pointer    ::bv3(:)
       end type base
       type, extends(base) :: ext
          type (e),pointer    ::bv(:)
          class (*),pointer    ::bv2(:)
          type(e):: bv4(2)
       end type ext
type x
       class (*   ), pointer     :: var(:)
       class (*   ), allocatable :: v2(:)
end type
type(x)::v(2)

     contains

       subroutine s1(value)
         class (*   ), intent(in) :: value(2)
kk=1
         allocate(v(2)%var, v(2)%v2,source=value,stat=kk)
if (kk/=0) print *,601
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
     allocate(value(2)%bv4(2)%name(2),source='ok')
     call s1(value) 
     k=0
     select type(w=>v(2)%var)
     type is(ext)
     associate (p=>w(2)%bv)
       p(2)%name(2)(:)='11'
     end associate 
       select type(p=>w(2)%bv3)
       type is(e)
       p(2)%name(2)(:)='11'
     end select
       select type(p=>w(2)%bv2)
       type is(e)
       p(2)%name(2)(:)='11'
       k1=loc(p(2)%name(2))
       k=1
     end select
       w(2)%bv4(2)%name(2)='11'
     end select
     if (k/=1) print *,1002
     associate (p=>value(2)%bv)
     if (p    (2)%name(2)(:)/='11') print *,1001
     end associate 
     select type(p=>value(2)%bv3)
     type is(e)
     if (p    (2)%name(2)(:)/='11') print *,1003
     end select
     select type(p=>value(2)%bv2)
     type is(e)
     if (p    (2)%name(2)(:)/='11') print *,1002
       k2=              loc(p    (2)%name(2))
     end select
       if (value(2)%bv4(2)%name(2)/='ok')  print *,1004
     if (k1/=k2) print *,2002
     k=0
     select type(w=>v(2)%v2)
     type is(ext)
     associate (p=>w(2)%bv)
     if (p    (2)%name(2)(:)/='11') print *,3001
     end associate 
       select type(p=>w(2)%bv3)
       type is(e)
     if (p    (2)%name(2)(:)/='11') print *,3002
     end select
       select type(p=>w(2)%bv2)
       type is(e)
     if (p    (2)%name(2)(:)/='11') print *,3003
       k1=loc(p(2)%name(2))
       k=1
     end select
       if (w(2)%bv4(2)%name(2)/='ok')  print *,3004
     end select
     if (k/=1) print *,3302
     if (k1/=k2) print *,2332
end
call s
     print *,'sngg407q : pass'
     end program


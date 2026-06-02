     module mod
       type :: b
       end type
       type, extends(b) :: e
          character(:),allocatable::name
       end type
       

       type :: base
          class (*),allocatable::bv3
       end type base
       type, extends(base) :: ext
       end type ext
type x
       class (*   ), pointer     :: var
end type
type(x)::v

     contains

       subroutine s1(value)
         class (*   ), intent(in) :: value
kk=1
         allocate(v%var, source=value,stat=kk)
if (kk/=0) print *,601
       end subroutine s1
     end module mod

subroutine s
     use mod
     type(ext), allocatable :: value
     allocate(value)
     allocate(e::value%bv3)
     select type(p=>value%bv3)
     type is(e)
       allocate(p%name,source='ok')
     end select
     call s1(value) 
     select type(w=>v%var)
     type is(ext)
       select type(p=>w%bv3)
       type is(e)
       p%name(:)='11'
     end select
     end select
     select type(p=>value%bv3)
     type is(e)
     if (p    %name(:)/='ok') print *,1003
     end select
end
call s
     print *,'sngg431q : pass'
     end program


     module mod
       type :: b
          character(:),allocatable::name
       end type
       type :: base
          class (b),allocatable::bv3
       end type base
       class (*   ), allocatable :: var

     contains

       subroutine s1(value)
         class (*   ), intent(in) :: value
kk=1
         allocate(var, source=value,stat=kk)
if (kk/=0) print *,601
       end subroutine s1
     end module mod

subroutine s
     use mod
     type(base), allocatable :: value
     allocate(value)
     allocate(b::value%bv3)
     select type(p=>value%bv3)
     type is(b)
       allocate(p%name,source='ok')
     end select
     call s1(value) 
     select type(w=>var)
     type is(base)
       select type(p=>w%bv3)
       type is(b)
       p%name(:)='11'
     end select
     end select
     select type(p=>value%bv3)
     type is(b)
     if (p    %name(:)/='ok') print *,1003
     end select
end
call s
     print *,'sngg433q : pass'
     end program


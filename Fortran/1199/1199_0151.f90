     module mod
       type :: bb
       end type
       type, extends(bb) :: ee
          character(:),allocatable::name
       end type

       type :: b
          class(bb),allocatable::ev
       end type
       type, extends(b) :: e
          integer(8)::d1
       end type
       

       type :: base
          type(e):: bv4
       end type base
       type, extends(base) :: ext
          integer(8)::d2
       end type ext
type x
       class (base), pointer     :: var
       class (base), allocatable :: v2
end type
type(x)::v

     contains

       subroutine s1(value)
         class (base), intent(in) :: value
         allocate(v%var, v%v2,source=value)
       end subroutine s1
     end module mod

subroutine s
     use mod
     type(ext), allocatable :: value
     allocate(value)
     allocate(ee::value%bv4%ev)
     select type(p=>value%bv4%ev)
     type is(ee)
       allocate(p%name,source='ok')
     end select
     call s1(value) 
     k=0
     select type(w=>v%var)
     type is(ext)
       select type(p=>w%bv4%ev)
       type is(ee)
       p%name(:)='11'
       k=1
     end select
     end select
     if (k/=1) print *,1002
     select type(p=>value%bv4%ev)
     type is(ee)
       if (p    %name(:)/='ok') print *,1003
     end select
     k=0
     select type(w=>v%v2)
     type is(ext)
       select type(p=>w   %bv4%ev)
       type is(ee)
     if (p    %name(:)/='ok') print *,3002
       k=1
     end select
     end select
     if (k/=1) print *,3302
end
call s
     print *,'sngg294q : pass'
     end program


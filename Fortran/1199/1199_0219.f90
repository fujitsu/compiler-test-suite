     module mod
       type :: bb
       end type
       type, extends(bb) :: ee
          character(:),allocatable::name
       end type

       type :: b
          integer(8)::d1
       end type
       type, extends(b) :: e
          class(* ),allocatable::ev
       end type
       

       type :: base
          type(e):: bv4
       end type base
       type, extends(base) :: ext
          integer(8)::d2
       end type ext
type x
       type  (ext ), pointer     :: var
       type  (ext ), allocatable :: v2
end type
type(x)::v

     contains

       subroutine s1(value)
         class (ext ), intent(in) :: value
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
     !select type(var)
     !type is(ext)
       select type(p=>v%var%bv4%ev)
       type is(ee)
       p%name(:)='11'
       k=1
     !end select
     end select
     if (k/=1) print *,1002
     select type(p=>value%bv4%ev)
     type is(ee)
       if (p    %name(:)/='ok') print *,1003
     end select
     k=0
     !select type(v2)
     !type is(ext)
       select type(p=>v%v2%bv4%ev)
       type is(ee)
     if (p    %name(:)/='ok') print *,3002
       k=1
     !end select
     end select
     if (k/=1) print *,3302
end
call s
     print *,'sngg363q : pass'
     end program


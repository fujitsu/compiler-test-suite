     module mod
       type :: bb
       end type
       type, extends(bb) :: ee
          character(:),allocatable::name(:)
       end type

       type :: b
          class(* ),allocatable::ev(:)
       end type
       type, extends(b) :: e
          integer(8)::d1
       end type
       

       type :: base
          type(e):: bv4(2)
       end type base
       type, extends(base) :: ext
          integer(8)::d2
       end type ext
type x
       type  (ext ), pointer     :: var(:)
       type  (ext ), allocatable :: v2(:)
end type
type(x)::v(2)

     contains

       subroutine s1(value)
         class (ext ), intent(in) :: value(:)
         allocate(v(2)%var, v(2)%v2,source=value)
       end subroutine s1
     end module mod

subroutine s
     use mod
     type(ext), allocatable :: value(:)
     allocate(value(2))
     allocate(ee::value(2)%bv4(2)%ev(2))
     select type(p=>value(2)%bv4(2)%ev)
     type is(ee)
       allocate(p(2)%name(2),source='ok')
     end select
     call s1(value) 
     k=0
     !select type(var)
     !type is(ext)
       select type(p=>v(2)%var(2)%bv4(2)%ev)
       type is(ee)
       p(2)%name(2)(:)='11'
       k=1
     !end select
     end select
     if (k/=1) print *,1002
     select type(p=>value(2)%bv4(2)%ev)
     type is(ee)
       if (p    (2)%name(2)(:)/='ok') print *,1003
     end select
     k=0
     !select type(v2)
     !type is(ext)
       select type(p=>v(2)%v2(2)%bv4(2)%ev)
       type is(ee)
     if (p    (2)%name(2)(:)/='ok') print *,3002
       k=1
     !end select
     end select
     if (k/=1) print *,3302
end
call s
     print *,'sngg400q : pass'
     end program


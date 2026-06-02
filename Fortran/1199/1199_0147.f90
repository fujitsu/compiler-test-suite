     module mod
       type :: bbb
       end type
       type, extends(bbb) :: eee
          character(:),allocatable::name
       end type
       type :: bb
       end type
       type, extends(bb) :: ee
          class(bbb),allocatable::eev
       end type

       type :: b
          integer(8)::d1
       end type
       type, extends(b) :: e
          type (ee),allocatable::ev
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
     allocate(eee::value%bv4%ev%eev)
     associate (p=>value%bv4%ev)
       select type(q=>p%eev  )
         type is(eee)
           allocate(q%name,source='ok')
       end select
     end associate 
     call s1(value) 
     k=0
     !select type(var)
     !type is(ext)
       associate(p=>v%var%bv4%ev)
       select type(q=>p%eev  )
         type is(eee)
           q%name(:)='11'
       k=1
       end select
     !end select
     end associate
     if (k/=1) print *,1002
     associate(p=>value%bv4%ev)
       select type(q=>p%eev  )
         type is(eee)
       if (q    %name(:)/='ok') print *,1003
       end select
     end associate
     k=0
     !select type(v2)
     !type is(ext)
       associate(p=>v%v2%bv4%ev)
       select type(q=>p%eev  )
         type is(eee)
       if (q    %name(:)/='ok') print *,3003
       k=1
       end select
     !end select
     end associate
     if (k/=1) print *,3302
end
call s
     print *,'sngg290q : pass'
     end program


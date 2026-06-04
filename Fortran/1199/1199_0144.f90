     module mod
       type :: bbb
       end type
       type, extends(bbb) :: eee
          character(:),allocatable::name
       end type
       type :: bb
       end type
       type, extends(bb) :: ee
          class(bbb),pointer    ::eev
       end type

       type :: b
          integer(8)::d1
       end type
       type, extends(b) :: e
          type (ee)::ev
       end type
       

       type :: base
          type(e):: bv4
       end type base
       type, extends(base) :: ext
          integer(8)::d2
       end type ext
       type  (ext ), pointer     :: var
       type  (ext ), allocatable :: v2

     contains

       subroutine s1(value)
         class (ext ), intent(in) :: value
         allocate(var, v2,source=value)
       end subroutine s1
     end module mod

subroutine s
     use mod
     type(ext), allocatable :: value
     allocate(value)
     !!!allocate(ee::value%bv4%ev)
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
       associate(p=>var%bv4%ev)
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
       if (q    %name(:)/='11') print *,1003
       end select
     end associate
     k=0
     !select type(v2)
     !type is(ext)
       associate(p=>v2%bv4%ev)
       select type(q=>p%eev  )
         type is(eee)
       if (q    %name(:)/='11') print *,3003
       k=1
       end select
     !end select
     end associate
     if (k/=1) print *,3302
end
call s
     print *,'sngg287q : pass'
     end program


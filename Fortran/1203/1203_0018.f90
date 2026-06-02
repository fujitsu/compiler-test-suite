     module mod
       type :: base
       end type base

       type, extends(base) :: ext
          character(:),allocatable::name
       end type ext
       integer,parameter::m=10000
contains
     end module mod

     subroutine s1
     use mod
     class(*   ), allocatable :: var
  if (allocated(var)) then
     allocate(ext::var)
     select type(var)
     type is(ext)
       allocate(character(m)::var%name)
       var%name='1'
       write (1,"('var     :',z16.16)") loc(var)
       write (2,"('var%name:',z16.16)") loc(var%name)
       write (11,"(z16.16)") loc(var)
       write (12,"(z16.16)") loc(var%name)
       !!!!!deallocate(var%name)
     end select
end if
     !!!deallocate(var)
     end
     do k=1,10
      call s1
     end do
     print *,'sngg675q : pass'
     end 

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
block
     type (ext ), pointer     :: var
     allocate(ext::var)
  !  select type(var)
  ! type is(ext)
       allocate(character(m)::var%name)
       var%name='1'
       write (71,"('var     :',z16.16)") loc(var)
       write (72,"('var%name:',z16.16)") loc(var%name)
       write (73,"(z16.16)") loc(var)
       write (74,"(z16.16)") loc(var%name)
       !!!!!deallocate(var%name)
  !  end select

end block!!!deallocate(var)
     end
     do k=1,30
      call s1
     end do
     !call chk(73)
     !call chk(74)
     print *,'sngg494t : pass'
     end program

     module mod
       type :: base
       end type base

       type, extends(base) :: ext
          character(:),allocatable::name(:,:,:)
       end type ext
       integer,parameter::m=10000
contains
     end module mod

     subroutine s1
     use mod
block
     class(base), allocatable :: var(:,:,:)
  if (allocated(var)) then
     allocate(ext::var(2,2,2))
     select type(var)
     type is(ext)
       allocate(character(m)::var(2,2,2)%name(2,2,2))
       var(2,2,2)%name(2,2,2)='1'
       write (38,"('var     :',z16.16)") loc(var)
       write (39,"('var%name:',z16.16)") loc(var(2,2,2)%name)
       write (40,"(z16.16)") loc(var)
       write (41,"(z16.16)") loc(var(2,2,2)%name)
       !!!!!deallocate(var%name)
     end select
end if
     !!!deallocate(var)
     end block
end
     do k=1,10
      call s1
     end do
     print *,'sngg485t : pass'
     end

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
  block
     class(base), allocatable :: var
     allocate(ext::var)
     select type(var)
     type is(ext)
       allocate(character(m)::var%name)
       var%name='1'
       write (1,"('var     :',z16.16)") loc(var)
       write (2,"('var%name:',z16.16)") loc(var%name)
       write (3,"(z16.16)") loc(var)
       write (4,"(z16.16)") loc(var%name)
       !!!!!deallocate(var%name)
     end select
   end block
   end block
     !!!deallocate(var)
     end
         write(7,*)"'strat'"
     do k=1,30
      call s1
     end do
     !call chk(3)
     !call chk(4)
     print *,'sngg475t : pass'
     end program

subroutine  chk(k)
     character(16)::x(1000)
     rewind (k)
     kk=1
     do
       read(k ,'(a)',end=100) x(kk)
       kk=kk+1
     end do
  100 continue
     kk=kk-1
     if (kk>1000) stop 999
     do nn=1,kk-1
      do nnn=nn+1,kk
        if (x(nn)==x(nnn)) return
      end do
     end do
  500 print *,'Check unit:',k
     end

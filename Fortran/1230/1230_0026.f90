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
     class(*   ), allocatable :: var(:,:,:)
     allocate(ext::var(2,2,2))
     select type(var)
     type is(ext)
       allocate(character(m)::var(2,2,2)%name(2,2,2))
       var(2,2,2)%name(2,2,2)='1'
       write (92,"('var     :',z16.16)") loc(var)
       write (93,"('var%name:',z16.16)") loc(var(2,2,2)%name)
       write (94,"(z16.16)") loc(var)
       write (95,"(z16.16)") loc(var(2,2,2)%name)
       !!!!!deallocate(var%name)
     end select
     !!!deallocate(var)
     end block
end
     do k=1,30
      call s1
     end do
     !call chk(94)
     !call chk(95)
     print *,'sngg499t : pass'
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

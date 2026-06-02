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
     class(*   ), allocatable :: var,vas,vat,vau
     allocate(ext::var,vas,vat,vau)
     select type(var)
     type is(ext)
       allocate(character(m)::var%name)
       var%name='1'
       write (80,"('var     :',z16.16)") loc(var)
       write (81,"('var%name:',z16.16)") loc(var%name)
       write (82,"(z16.16)") loc(var)
       write (83,"(z16.16)") loc(var%name)
       !!!!!deallocate(var%name)
     end select
     select type(p=>vas)
     type is(ext)
       allocate(character(m)::p  %name)
       p  %name='1'
     end select
     select type(p=>vat)
     type is(ext)
       allocate(character(m)::p  %name)
       p  %name='1'
     end select
     select type(p=>vau)
     type is(ext)
       allocate(character(m)::p  %name)
       p  %name='1'
     end select
     !!!deallocate(var)
    end block
 end
     do k=1,30
      call s1
     end do
     !call chk(82)
     !call chk(83)
     print *,'sngg496t : pass'
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

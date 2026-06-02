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
  type y
     integer::gy
     class(*   ), allocatable :: var(:,:,:)
  end type
  type yy
     integer::gy
     class(*)    , allocatable :: v(:,:,:)
  end type
  class (yy),allocatable::h(:,:,:)
     allocate(h(2,2,2))
     allocate(y::h(2,2,2)%v(2,2,2))
select type(q=>h(2,2,2)%v)
  type is(y)
     allocate(ext::q         (2,2,2)%var(2,2,2))
     select type(p=>q         (2,2,2)%var)
     type is(ext)
       allocate(character(m)::p(2,2,2)  %name(2,2,2))
       p(2,2,2)  %name(2,2,2)='1'
       write (237,"('var     :',z16.16)") loc(p  )
       write (238,"('var%name:',z16.16)") loc(p(2,2,2)  %name)
       write (239,"(z16.16)") loc(p  )
       write (240,"(z16.16)") loc(p(2,2,2)  %name)
       !!!!!deallocate(var%name)
     end select
     end select
     !!!deallocate(var)
     end block
end
     do k=1,30
      call s1
     end do
     !call chk(239)
     !call chk(240)
     print *,'sngg536t : pass'
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

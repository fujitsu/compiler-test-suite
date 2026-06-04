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
  type y
     integer::gy
     class(base), allocatable :: var
  end type
  type yy
     integer::gy
     class(y)    , allocatable :: v
  end type
  class (yy),allocatable::h
     allocate(h)
     allocate(h%v)
     allocate(ext::h%v%var)
     select type(p=>h%v%var)
     type is(ext)
       allocate(character(m)::p  %name)
       p  %name='1'
       write (152,"('var     :',z16.16)") loc(p  )
       write (153,"('var%name:',z16.16)") loc(p  %name)
       write (154,"(z16.16)") loc(p  )
       write (155,"(z16.16)") loc(p  %name)
       !!!!!deallocate(var%name)
     end select
     !!!deallocate(var)
     end block
end
     do k=1,30
      call s1
     end do
     !call chk(154)
     !call chk(155)
     print *,'sngg515t : pass'
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

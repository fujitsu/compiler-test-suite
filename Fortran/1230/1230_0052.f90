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
     class(*   ), allocatable :: var
  end type
  class (*),allocatable::h
  allocate(y::h)
  select type(q=>h)
    type is(y)
     allocate(ext::q%var)
     select type(p=>q%var)
     type is(ext)
       allocate(character(m)::p  %name)
       p  %name='1'
       write (193,"('var     :',z16.16)") loc(p  )
       write (194,"('var%name:',z16.16)") loc(p  %name)
       write (195,"(z16.16)") loc(p  )
       write (196,"(z16.16)") loc(p  %name)
       !!!!!deallocate(var%name)
     end select
   end select
     !!!deallocate(var)
     end block
end
     do k=1,30
      call s1
     end do
     !call chk(195)
     !call chk(196)
     print *,'sngg525t : pass'
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

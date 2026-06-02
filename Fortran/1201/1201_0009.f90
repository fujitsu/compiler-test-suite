     module mod
       type :: base
       end type base

       type, extends(base) :: ext
          character(:),allocatable::name
       end type ext
       integer,parameter::m=10000
     end module mod

     subroutine s1
     use mod
type x
     integer(8)::d1
     class(base), allocatable :: var
end type
type(x)::w,z
     allocate(ext::w%var)
     select type(p=>w%var)
     type is(ext)
       allocate(character(m)::p%name)
       p%name='a'
       write (41,"('p     :',z16.16)") loc(p)
       write (42,"('p%name:',z16.16)") loc(p%name)
       write (43,"(z16.16)") loc(p)
       write (44,"(z16.16)") loc(p%name)
       !!!!!deallocate(p%name)
     end select
     allocate(z%var,source=w%var)
     select type(p=>w%var)
     type is(ext)
       p%name='b'
     end select
     deallocate(w%var)
     select type(p=>z%var)
     type is(ext)
       if (p%name/='a') print *,8001
     end select
     end
     do k=1,10
      call s1
     end do
     !call chk(43)
     !call chk(44)
     print *,'sngg525q : pass'
     end program
     subroutine  chk(k)
     character(16)::n1,n2
     rewind (k)
     read(k ,'(a)') n1
     do
       read(k ,'(a)',end=100) n2
       if (n1==n2) return
     end do
  100 continue
     rewind (k)
     read(k ,'(a)') n1
     read(k ,'(a)') n1
     do
       read(k ,'(a)',end=200) n2
       if (n1==n2) return
     end do
  200 continue
     rewind (k)
     read(k ,'(a)') n1
     read(k ,'(a)') n1
     read(k ,'(a)') n1
     do
       read(k ,'(a)',end=300) n2
       if (n1==n2) return
     end do
  300 continue
     rewind (k)
     read(k ,'(a)') n1
     read(k ,'(a)') n1
     read(k ,'(a)') n1
     read(k ,'(a)') n1
     do
       read(k ,'(a)',end=400) n2
       if (n1==n2) return
     end do
  400 continue
     rewind (k)
     read(k ,'(a)') n1
     read(k ,'(a)') n1
     read(k ,'(a)') n1
     read(k ,'(a)') n1
     read(k ,'(a)') n1
     do
       read(k ,'(a)',end=500) n2
       if (n1==n2) return
     end do
  500 print *,"Please check UNIT",k
     end

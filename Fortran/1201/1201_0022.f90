     module mod
       type :: base
       end type base

       type, extends(base) :: ext
          character(:),allocatable::name
       end type ext
       integer,parameter::m=10000
       character(100)::er='11'
       integer::is
     end module mod

     subroutine s1
     use mod
     class(base), allocatable :: var
     allocate(ext::var)
     select type(var)
     type is(ext)
       allocate(character(m)::var%name)
       write (93,"('var     :',z16.16)") loc(var)
       write (94,"('var%name:',z16.16)") loc(var%name)
       write (95,"(z16.16)") loc(var)
       write (96,"(z16.16)") loc(var%name)
       !!!!!deallocate(var%name)
     end select
     is=100
     deallocate(var,stat=is,errmsg=er)
     if (is/=0) print *,5001
     if (er/='11') print *,5002
     end
     do k=1,10
      call s1
     end do
     !call chk(95)
     !call chk(96)
     print *,'sngg538q : pass'
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

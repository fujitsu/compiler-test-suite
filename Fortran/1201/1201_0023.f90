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
     class(base), allocatable :: var,var2,var3
     allocate(ext::var,var2,var3)
     select type(var)
     type is(ext)
       allocate(character(m)::var%name)
       write (97,"('var     :',z16.16)") loc(var)
       write (98,"('var%name:',z16.16)") loc(var%name)
       write (99,"(z16.16)") loc(var)
       write (100,"(z16.16)") loc(var%name)
       !!!!!deallocate(var%name)
     end select
     select type(var2)
     type is(ext)
       allocate(character(m)::var2%name)
     end select
     select type(var3)
     type is(ext)
       allocate(character(m)::var3%name)
     end select
     is=100
     deallocate(var,var2,var3,stat=is,errmsg=er)
     if (is/=0) print *,5001
     if (er/='11') print *,5002
     end
     do k=1,10
      call s1
     end do
     !call chk(99)
     !call chk(100)
     print *,'sngg539q : pass'
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

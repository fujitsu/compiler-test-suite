     module mod
       type :: base
       end type base

       type, extends(base) :: ext
          character(:),allocatable::name(:,:,:)
       end type ext
       integer,parameter::m=10000
     character(100)::er='11'
       integer::is
     end module mod

     subroutine s1
     use mod
     class(base), allocatable :: var(:,:,:)
     class(base), allocatable :: var2(:,:,:)
     class(base), allocatable :: var3(:,:,:)
     allocate(ext::var(2,2,2))
     allocate(ext::var2(2,2,2))
     allocate(ext::var3(2,2,2))
     select type(var)
     type is(ext)
       allocate(character(m)::var(2,2,2)%name(2,2,2))
       write (101,"('var     :',z16.16)") loc(var)
       write (102,"('var%name:',z16.16)") loc(var(2,2,2)%name)
       write (103,"(z16.16)") loc(var)
       write (104,"(z16.16)") loc(var(2,2,2)%name)
       !!!!!deallocate(var%name)
     end select
     select type(var2)
     type is(ext)
       allocate(character(m)::var2(2,2,2)%name(2,2,2))
     end select
     select type(var3)
     type is(ext)
       allocate(character(m)::var3(2,2,2)%name(2,2,2))
     end select
     deallocate(var,var2,var3,stat=is,errmsg=er)
     if (is/=0) print *,5001
     if (er/='11') print *,5002
     end
     do k=1,10
      call s1
     end do
     !call chk(103)
     !call chk(104)
     print *,'sngg540q : pass'
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

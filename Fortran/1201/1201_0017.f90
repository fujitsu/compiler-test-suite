     module mod
       type :: base
          character(:),allocatable::n(:,:,:)
       end type base

       type, extends(base) :: ext
          character(:),allocatable::name(:,:,:)
       end type ext
       integer,parameter::m=10000
     end module mod

     subroutine s1
     use mod
     class(base), allocatable :: var(:,:,:)
     allocate(ext::var(2,2,2))
     select type(var)
     type is(ext)
       allocate(character(m)::var(2,2,2)%n(2,2,2))
       allocate(character(m)::var(2,2,2)%name(2,2,2))
       write (73,"('var     :',z16.16)") loc(var)
       write (74,"('var%name:',z16.16)") loc(var(2,2,2)%name)
       write (75,"(z16.16)") loc(var)
       write (76,"(z16.16)") loc(var(2,2,2)%name)
       !!!!!deallocate(var%name)
     end select
     deallocate(var)
     end
     do k=1,10
      call s1
     end do
     !call chk(75)
     !call chk(76)
     print *,'sngg533q : pass'
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

     module mod
       type :: base
          character(:),allocatable::n
       end type base

       type, extends(base) :: ext
          character(:),allocatable::name
       end type ext
       integer,parameter::m=10000
     end module mod

     subroutine s1
     use mod
     class(*   ), allocatable :: var
     allocate(ext::var)
     select type(var)
     type is(ext)
       allocate(character(m)::var%n)
       allocate(character(m)::var%name)
       write (282,"('var     :',z16.16)") loc(var)
       write (283,"('var%name:',z16.16)") loc(var%name)
       write (284,"(z16.16)") loc(var)
       write (285,"(z16.16)") loc(var%name)
       !!!!!deallocate(var%name)
     end select
     deallocate(var)
     end
     do k=1,10
      call s1
     end do
     !call chk(284)
     !call chk(285)
     print *,'sngg583q : pass'
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

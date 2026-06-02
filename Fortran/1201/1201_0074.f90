     module mod
       type :: base
       end type base

       type, extends(base) :: ext
          character(:),allocatable::name(:,:,:)
       end type ext
       integer,parameter::m=10000
     end module mod

     subroutine s1
     use mod
     type x
       integer(8)::d1
       class(*   ), allocatable :: var(:,:,:)
     end type
     type(x)::v
     n=2
     allocate(ext::v%var(n,n,n))
     select type(p=>v%var)
     type is(ext)
       allocate(character(m)::p(n,n,n)  %name(n,n,n))
       write (310,"('var     :',z16.16)") loc(p  )
       write (311,"('var%name:',z16.16)") loc(p(n,n,n)  %name)
       write (312,"(z16.16)") loc(p  )
       write (313,"(z16.16)") loc(p(n,n,n)  %name)
       !!!!!deallocate(var%name)
     end select
     deallocate(v%var)
     end
     do k=1,10
      call s1
     end do
     !call chk(312)
     !call chk(313)
     print *,'sngg590q : pass'
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

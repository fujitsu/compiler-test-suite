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
     type x
       integer(8)::d1
       class(*   ), allocatable :: var(:,:,:)
     end type
     type(x)::v,z,w
     n=2
     allocate(ext::v%var(n,n,n),z%var(n,n,n),w%var(n,n,n),stat=is,errmsg=er)
    if (is/=0) print *,5001
     if (er/='11') print *,5002
     select type(p=>v%var)
     type is(ext)
       allocate(character(m)::p(n,n,n)  %name(n,n,n))
       write (382,"('var     :',z16.16)") loc(p  )
       write (383,"('var%name:',z16.16)") loc(p(n,n,n)  %name)
       write (384,"(z16.16)") loc(p  )
       write (385,"(z16.16)") loc(p(n,n,n)  %name)
       !!!!!deallocate(var%name)
     end select
     select type(p=>w%var)
     type is(ext)
       allocate(character(m)::p(n,n,n)  %name(n,n,n))
     end select
     select type(p=>z%var)
     type is(ext)
       allocate(character(m)::p(n,n,n)  %name(n,n,n))
     end select
     deallocate(v%var,w%var,z%var,stat=is,errmsg=er)
     if (is/=0) print *,5401
     if (er/='11') print *,5402
     end
     do k=1,10
      call s1
     end do
     !call chk(384)
     !call chk(385)
     print *,'sngg608q : pass'
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

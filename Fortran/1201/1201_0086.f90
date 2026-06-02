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
type(x)::w(2,2,2),z(2,2,2),q(2,2,2)
     allocate(ext::w(2,2,2)%var(2,2,2))
     select type(p=>w(2,2,2)%var)
     type is(ext)
       allocate(character(m)::p(2,2,2)%name(2,2,2))
       p(2,2,2)%name(2,2,2)='a'
       write (358,"('p     :',z16.16)") loc(p)
       write (359,"('p%name:',z16.16)") loc(p(2,2,2)%name)
       write (360,"(z16.16)") loc(p)
       write (361,"(z16.16)") loc(p(2,2,2)%name)
       !!!!!deallocate(p%name)
     end select
     allocate(z(2,2,2)%var,q(2,2,2)%var,source=w(2,2,2)%var)
     select type(p=>w(2,2,2)%var)
     type is(ext)
       p(2,2,2)%name(2,2,2)='b'
     end select
     select type(p=>z(2,2,2)%var)
     type is(ext)
       if (p(2,2,2)%name(2,2,2)/='a') print *,8001
     end select
     select type(p=>q(2,2,2)%var)
     type is(ext)
       if (p(2,2,2)%name(2,2,2)/='a') print *,8002
     end select
     deallocate(w(2,2,2)%var,q(2,2,2)%var,z(2,2,2)%var,stat=is,errmsg=er)
     if (is/=0) print *,5001
     if (er/='11') print *,5002
     end
     do k=1,10
      call s1
     end do
     !call chk(360)
     !call chk(361)
     print *,'sngg602q : pass'
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

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
     is=1
     allocate(ext::w(2,2,2)%var(2,2,2), z(2,2,2)%var(2,2,2), q(2,2,2)%var(2,2,2),stat=is,errmsg=er)
        if (is/=0) print *,5011
     if (er/='11') print *,5012
     select type(p=>w(2,2,2)%var)
     type is(ext)
       allocate(character(m)::p(2,2,2)%name(2,2,2))
       write (362,"('p     :',z16.16)") loc(p)
       write (363,"('p%name:',z16.16)") loc(p(2,2,2)%name)
       write (364,"(z16.16)") loc(p)
       write (365,"(z16.16)") loc(p(2,2,2)%name)
       !!!!!deallocate(p%name)
     end select
     select type(p=>q(2,2,2)%var)
     type is(ext)
       allocate(character(m)::p(2,2,2)%name(2,2,2))
     end select
     select type(p=>z(2,2,2)%var)
     type is(ext)
       allocate(character(m)::p(2,2,2)%name(2,2,2))
     end select
     deallocate(w(2,2,2)%var,q(2,2,2)%var,z(2,2,2)%var,stat=is,errmsg=er)
     if (is/=0) print *,5001
     if (er/='11') print *,5002
     end
     do k=1,10
      call s1
     end do
     !call chk(364)
     !call chk(365)
     print *,'sngg603q : pass'
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

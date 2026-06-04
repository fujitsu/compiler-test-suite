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
     class(ext ), allocatable :: var(:),vas(:),vat(:)
     allocate(ext::var(3),vat(3),vas(3),stat=is,errmsg=er)
     if (is/=0) print *,5011
     if (er/='11') print *,5102
     n=3
     select type(var)
     type is(ext)
       allocate(character(m)::var(3)%name(n,n,n))
       write (125,"('var     :',z16.16)") loc(var)
       write (126,"('var%name:',z16.16)") loc(var(3)%name)
       write (127,"(z16.16)") loc(var)
       write (128,"(z16.16)") loc(var(3)%name)
     end select
     select type(vas)
     type is(ext)
       allocate(character(m)::vas(3)%name(n,n,n))
     end select
     select type(vat)
     type is(ext)
       allocate(character(m)::vat(3)%name(n,n,n))
     end select
     deallocate(var,vas,vat,stat=is,errmsg=er)
     if (is/=0) print *,5111
     if (er/='11') print *,5122
     end
     do k=1,10
      call s1
     end do
     !call chk(127)
     !call chk(128)
     print *,'sngg546q : pass'
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

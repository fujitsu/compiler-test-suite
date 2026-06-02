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
     class(ext ), allocatable :: var(:,:,:)
     class(ext ), allocatable :: vas(:,:,:)
     class(ext ), allocatable :: vat(:,:,:)
     allocate(ext::var(2,2,2),vas(2,2,2),vat(2,2,2),stat=is,errmsg=er)
     if (is/=0) print *,5001
     if (er/='11') print *,5002
     n=2
     select type(var)
     type is(ext)
       allocate(character(m)::var(n,n,n)%name(n,n,n))
       write (141,"('var     :',z16.16)") loc(var)
       write (142,"('var%name:',z16.16)") loc(var(n,n,n)%name)
       write (143,"(z16.16)") loc(var)
       write (144,"(z16.16)") loc(var(n,n,n)%name)
       !!!!!deallocate(var%name)
     end select
     select type(vas)
     type is(ext)
       allocate(character(m)::vas(n,n,n)%name(n,n,n))
     end select
     select type(vat)
     type is(ext)
       allocate(character(m)::vat(n,n,n)%name(n,n,n))
     end select
     deallocate(var,vas,vat,stat=is,errmsg=er)
     if (is/=0) print *,5301
     if (er/='11') print *,5302
     end
     do k=1,10
      call s1
     end do
     !call chk(143)
     !call chk(144)
     print *,'sngg550q : pass'
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

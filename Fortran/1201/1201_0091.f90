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
     class(*), pointer     :: var(:,:,:)
     class(*), pointer     :: vas(:,:,:)
     class(*), pointer     :: vat(:,:,:)
     n=2
     allocate(ext::var(n,n,n),vat(n,n,n),vas(n,n,n),stat=is,errmsg=er)
    if (is/=0) print *,5001
     if (er/='11') print *,5002
     select type(var)
     type is(ext)
       allocate(character(m)::var(n,n,n)%name(n,n,n),stat=is,errmsg=er)
    if (is/=0) print *,5001
     if (er/='11') print *,5002
       write (378,"('var     :',z16.16)") loc(var)
       write (379,"('var%name:',z16.16)") loc(var(n,n,n)%name)
       write (380,"(z16.16)") loc(var)
       write (381,"(z16.16)") loc(var(n,n,n)%name)
       !!!!!deallocate(var%name)
     end select
     select type(vas)
     type is(ext)
       allocate(character(m)::vas(n,n,n)%name(n,n,n),stat=is,errmsg=er)
    if (is/=0) print *,5071
     if (er/='11') print *,7002
     end select
     select type(vat)
     type is(ext)
       allocate(character(m)::vat(n,n,n)%name(n,n,n),stat=is,errmsg=er)
    if (is/=0) print *,5401
     if (er/='11') print *,5402
     end select
is=1
     deallocate(var,vas,vat,stat=is,errmsg=er)
    if (is/=0) print *,5001
     if (er/='11') print *,5002
     end
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
     do k=1,10
      call s1
     end do
     !call chk(380)
     !call chk(381)
     print *,'sngg607q : pass'
     end

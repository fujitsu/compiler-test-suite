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
     class(*), allocatable :: var(:,:,:)
     class(*), allocatable :: vas(:,:,:)
     class(*), allocatable :: vat(:,:,:)
     allocate(ext::var(2,2,2),vas(2,2,2),vat(2,2,2),stat=is,errmsg=er)
     if (is/=0) print *,5001
     if (er/='11') print *,5002
     select type(var)
     type is(ext)
       allocate(character(m)::var(2,2,2)%name(2,2,2))
       write (394,"('var     :',z16.16)") loc(var)
       write (395,"('var%name:',z16.16)") loc(var(2,2,2)%name)
       write (396,"(z16.16)") loc(var)
       write (397,"(z16.16)") loc(var(2,2,2)%name)
       !!!!!deallocate(var%name)
     end select
     select type(vas)
     type is(ext)
       allocate(character(m)::vas(2,2,2)%name(2,2,2))
     end select
     select type(vat)
     type is(ext)
       allocate(character(m)::vat(2,2,2)%name(2,2,2))
     end select
     deallocate(var,vat,vas,stat=is,errmsg=er)
     if (is/=0) print *,5001
     if (er/='11') print *,5002
     end
     do k=1,10
      call s1
     end do
     !call chk(396)
     !call chk(397)
     print *,'sngg611q : pass'
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

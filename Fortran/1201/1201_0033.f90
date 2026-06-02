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
     class(ext ), pointer     :: var(:,:,:)
     class(ext ), pointer     :: vat(:,:,:)
     class(ext ), pointer     :: vaw(:,:,:)
  n=2
     allocate(ext::var(n,n,n),vat(n,n,n),vaw(n,n,n),stat=is,errmsg=er)
     if (is/=0) print *,5601
     if (er/='11') print *,5602
     select type(var)
     type is(ext)
       allocate(character(m)::var(n,n,n)%name(n,n,n))
       write (137,"('var     :',z16.16)") loc(var)
       write (138,"('var%name:',z16.16)") loc(var(n,n,n)%name)
       write (139,"(z16.16)") loc(var)
       write (140,"(z16.16)") loc(var(n,n,n)%name)
       !!!!!deallocate(var%name)
     end select
     select type(vat)
     type is(ext)
       allocate(character(m)::vat(n,n,n)%name(n,n,n))
     end select
     select type(vaw)
     type is(ext)
       allocate(character(m)::vaw(n,n,n)%name(n,n,n))
     end select
     deallocate(var,vat,vaw,stat=is,errmsg=er)
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
  !   call chk(139)
  !   call chk(140)
     print *,'sngg549q : pass'
     end

     module mod
       type :: base
       end type base

       type, extends(base) :: ext
          character(:),allocatable::name
       end type ext
       integer,parameter::m=10000
     end module mod

     subroutine s1
     use mod
      character(100)::er='11'
       integer::is
     class(ext ), allocatable :: var(:)
     class(ext ), allocatable :: vas(:)
     class(ext ), allocatable :: vat(:)
     class(ext ), allocatable :: vau(:)
     allocate(ext::var(3))
     select type(var)
     type is(ext)
       allocate(character(m)::var(3)%name)
        var(3)%name='a'
       write (165,"('var     :',z16.16)") loc(var)
       write (166,"('var%name:',z16.16)") loc(var(3)%name)
       write (167,"(z16.16)") loc(var)
       write (168,"(z16.16)") loc(var(3)%name)
     end select
     is=1
     allocate(vas,vat,vau,source=var,stat=is,errmsg=er)
     if (is/=0) print *,5031
     if (er/='11') print *,5302
     select type(p=>var)
      type is(ext)
        p(3)%name='b'
     end select
     select type(p=>vas)
      type is(ext)
        if (p(3)%name/='a') print *,2001
     end select
     select type(p=>vat)
      type is(ext)
        if (p(3)%name/='a') print *,1001
     end select
     select type(p=>vau)
      type is(ext)
        if (p(3)%name/='a') print *,2021
     end select
     is=1
     deallocate(var,vas,vat,vau,stat=is,errmsg=er)
     if (is/=0) print *,5501
     if (er/='11') print *,5005
     end
     do k=1,10
      call s1
     end do
     !call chk(167)
     !call chk(168)
     print *,'sngg556q : pass'
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

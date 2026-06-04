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
type x
     integer(8)::d1
     class(*   ), allocatable :: var,vas,vat,vaw
end type
type(x)::w
     allocate(ext::w%var)
     select type(p=>w%var)
     type is(ext)
       allocate(character(m)::p%name)
       p%name='a'
       write (406,"('p     :',z16.16)") loc(p)
       write (407,"('p%name:',z16.16)") loc(p%name)
       write (408,"(z16.16)") loc(p)
       write (409,"(z16.16)") loc(p%name)
       !!!!!deallocate(p%name)
     end select
     is=2
     allocate(w%vas,w%vat,w%vaw,source=w%var,stat=is,errmsg=er)
     if (is/=0) print *,5001
     if (er/='11') print *,5002
     select type(p=>w%var)
     type is (ext)
       p%name='b'
     end select
     select type(p=>w%vaw)
     type is (ext)
       if (p%name/='a') print *,7301
     end select
     select type(p=>w%vat)
     type is (ext)
       if (p%name/='a') print *,7041
     end select
     select type(p=>w%vas)
     type is (ext)
       if (p%name/='a') print *,7501
     end select
     is=2
     deallocate(w%var,w%vas,w%vaw,w%vat,stat=is,errmsg=er)
     if (is/=0) print *,5051
     if (er/='11') print *,5502
     end
     do k=1,10
      call s1
     end do
     !call chk(408)
     !call chk(409)
     print *,'sngg614q : pass'
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

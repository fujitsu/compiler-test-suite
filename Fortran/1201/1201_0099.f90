     module mod
       type :: base
          character(:),allocatable::n
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
     class(*   ), allocatable :: var,vas,vaw,vat
is=1
     allocate(ext::var,stat=is,errmsg=er)
     if (is/=0) print *,5801
     if (er/='11') print *,5802
     select type(var)
     type is(ext)
       allocate(character(m)::var%n)
       allocate(character(m)::var%name)
       var%n='a'
       var%name='a'
       write (410,"('var     :',z16.16)") loc(var)
       write (411,"('var%name:',z16.16)") loc(var%name)
       write (412,"(z16.16)") loc(var)
       write (413,"(z16.16)") loc(var%name)
       !!!!!deallocate(var%name)
     end select
is=1
     allocate(vas,vaw,vat,source=var,stat=is,errmsg=er)
     if (is/=0) print *,5001
     if (er/='11') print *,5002
     select type(var)
     type is(ext)
       var%n='b'
       var%name='b'
     end select
     select type(p=>vat)
     type is(ext)
       if (p%n/='a') print *,6001
       if (p%name/='a') print *,6002
     end select
     select type(p=>vaw)
     type is(ext)
       if (p%n/='a') print *,6101
       if (p%name/='a') print *,6102
     end select
     select type(p=>vas)
     type is(ext)
       if (p%n/='a') print *,6021
       if (p%name/='a') print *,6032
     end select
 is=1
     deallocate(var,vas,vaw,vat,stat=is,errmsg=er)
     if (is/=0) print *,5401
     if (er/='11') print *,5402
     end
     do k=1,10
      call s1
     end do
     !call chk(412)
     !call chk(413)
     print *,'sngg615q : pass'
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

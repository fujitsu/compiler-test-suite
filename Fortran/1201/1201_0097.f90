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
     class(*   ), allocatable :: var
end type
type(x)::w,z,s,t
     allocate(ext::w%var)
     select type(p=>w%var)
     type is(ext)
       allocate(character(m)::p%name)
       p%name='a'
       write (402,"('p     :',z16.16)") loc(p)
       write (403,"('p%name:',z16.16)") loc(p%name)
       write (404,"(z16.16)") loc(p)
       write (405,"(z16.16)") loc(p%name)
       !!!!!deallocate(p%name)
     end select
 is=1
     allocate(z%var,t%var,s%var,source=w%var,stat=is,errmsg=er)
     if (is/=0) print *,5081
     if (er/='11') print *,5802
     select type(p=>w%var)
     type is(ext)
       p%name='b'
     end select
     select type(p=>s%var)
     type is(ext)
       if (p%name/='a') print *,8601
     end select
     select type(p=>t%var)
     type is(ext)
       if (p%name/='a') print *,8701
     end select
     select type(p=>z%var)
     type is(ext)
       if (p%name/='a') print *,8001
     end select
     deallocate(w%var,z%var,s%var,t%var,stat=is,errmsg=er)
     if (is/=0) print *,5601
     if (er/='11') print *,5072
     end
     do k=1,10
      call s1
     end do
     !call chk(404)
     !call chk(405)
     print *,'sngg613q : pass'
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

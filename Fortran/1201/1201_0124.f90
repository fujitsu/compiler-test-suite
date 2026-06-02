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
     class(base), pointer     :: var
     class(base), pointer     :: vas
     class(base), pointer     :: vat
     class(base), pointer     :: vau
      character(100)::er='11'
       integer::is
     allocate(ext::var)
     select type(var)
     type is(ext)
       allocate(character(m)::var%name)
       var%name='a'
       write (557,"('var     :',z16.16)") loc(var)
       write (558,"('var%name:',z16.16)") loc(var%name)
       write (559,"(z16.16)") loc(var)
       write (560,"(z16.16)") loc(var%name)
       !!!!!deallocate(var%name)
     end select
     is=1
     allocate(vas,vat,vau,source=var,stat=is,errmsg=er)
     if (is/=0) print *,5001
     if (er/='11') print *,5002
     select type (p=>var)
       type is(ext)
         p%name='b'
     end select
     select type (p=>vas)
       type is(ext)
         if (p%name/='a') print *,11001
     end select
     select type (p=>vat)
       type is(ext)
         if (p%name/='a') print *,10201
     end select
     select type (p=>vau)
       type is(ext)
         if (p%name/='a') print *,10031
     end select
     is=1
     deallocate(var,vas,vat,vau,stat=is,errmsg=er)
     if (is/=0) print *,5901
     if (er/='11') print *,5902
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
     !call chk(559)
     !call chk(560)
     print *,'sngg640q : pass'
     end

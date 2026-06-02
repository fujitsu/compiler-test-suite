     module mod
       type :: base
           integer::dd=2
         contains
           final::fb
       end type base

       type, extends(base) :: ext
          character(:),allocatable::name
         contains
           final::fe
       end type ext
       integer,parameter::m=10000
contains
   subroutine fb(d)
    type(base)::d
       if (d%dd  /=2  ) print *,1012
write(116,*)"'fb'"
   end subroutine
   subroutine fe(d)
    type(ext)::d
       if (d%name/='a'.and.d%name/='b') print *,1002
write(116,*)"'fe'"
   end subroutine
     end module mod

     subroutine s1
     use mod
     class(base), pointer     :: var
     class(*), pointer     :: vas
     class(*), pointer     :: vat
     class(*), pointer     :: vau
      character(100)::er='11'
       integer::is
     allocate(ext::var)
     select type(var)
     type is(ext)
       allocate(character(m)::var%name)
       var%name='a'
       write (56,"('var     :',z16.16)") loc(var)
       write (57,"('var%name:',z16.16)") loc(var%name)
       write (58,"(z16.16)") loc(var)
       write (70,"(z16.16)") loc(var%name)
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
     !!!deallocate(var,vas,vat,vau,stat=is,errmsg=er)
     !!if (is/=0) print *,5901
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
  !   call chk(58)
  !   call chk(70)
     call chk_final(116)
     print *,'sngg652q : pass'
     end 
     subroutine chk_final(k)
     use mod
     character(m)::r
     rewind (k)
     do n=1,80
       read(k ,*    ,end=100) r
       if (r/='fe')print *,3001,trim(r)
       read(k ,*            ) r
       if (r/='fb')print *,3002,trim(r)
     end do
print *,7891
  100 continue
     end
       



     module mod
       type :: base
          character(:),allocatable::name
       end type base

       type, extends(base) :: ext
          integer(8)::d(1000)
       end type ext
contains
     end module mod

     subroutine s1
     use mod
     class(*   ), allocatable :: var
     type (ext ) :: v
     allocate(v%name,source=repeat('1',1))
     allocate(base::var)

     select type(p=>var)
    type is(base)
     allocate(p  %name,source=repeat('1',1000))
write(391,'(z16.16)') loc(p  %name)
     end select
     var=v
     select type(p=>var)
       type is(ext)
         if (p%name/='1') print *,202
write(390,'(z16.16)') loc(p%name)
     end select
     end
     do n=1,10
      call s1
     end do
 !   call chk(390)
  !  call chk(391)
     print *,'sngg897q : pass'
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

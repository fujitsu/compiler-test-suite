     module mod
       type :: base
       end type base

       type, extends(base) :: ext
          character(:),allocatable::name(:)
       end type ext
contains
     end module mod

     subroutine s1
     use mod
     class(base), allocatable :: var(:)
     type (ext ) :: v(3)
     allocate(v(1)%name(2),source=repeat('1',1000))
     allocate(v(2)%name(2),source=repeat('1',1000))
     allocate(v(3)%name(2),source=repeat('1',1000))
write(170,"(z16.16)")loc(v(1)%name)
write(171,"(z16.16)")loc(v(2)%name)
write(172,"(z16.16)")loc(v(3)%name)
     allocate(var(3))
     var=v
     select type(p=>var)
       type is(ext)
         if (p(1)%name(2)(:1)/='1') print *,202
         if (p(2)%name(2)(:1)/='1') print *,202
         if (p(3)%name(2)(:1)/='1') print *,202
write(173,"(z16.16)")loc(p(1))
     end select
     end
     do n=1,10
      call s1
     end do
!    call chk(170)
!    call chk(171)
!    call chk(172)
!     call chk(173)
     print *,'sngg826q : pass'
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

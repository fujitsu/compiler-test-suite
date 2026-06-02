     module mod
       type :: base
       end type base

       type, extends(base) :: ext
          character(:),allocatable::name
       end type ext
contains
     end module mod

     subroutine s1
     use mod
     class(base), allocatable :: var(:)
     class(base), allocatable :: v(:)
allocate(ext::v(3))
select type(p=>v)
 type is(ext)
     allocate(p(1)%name,source=repeat('1',10000))
     allocate(p(2)%name,source=repeat('1',10000))
     allocate(p(3)%name,source=repeat('1',10000))
write(91,"(z16.16)")loc(p(1)%name)
write(92,"(z16.16)")loc(p(2)%name)
write(93,"(z16.16)")loc(p(3)%name)
    end select
     allocate(var(3))
     var=v
     select type(p=>var)
       type is(ext)
         if (p(1)%name(:1)/='1') print *,202
         if (p(2)%name(:1)/='1') print *,202
         if (p(3)%name(:1)/='1') print *,202
write(94,"(z16.16)")loc(p(1))
write(95,"(z16.16)")loc(p(1)%name)
write(96,"(z16.16)")loc(p(2)%name)
write(97,"(z16.16)")loc(p(3)%name)
     end select
     end
     do n=1,10
      call s1
     end do
!    call chk(91)
!    call chk(92)
!    call chk(93)
!     call chk(94)
!     call chk(95)
!     call chk(96)
!     call chk(97)
     print *,'sngg794q : pass'
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

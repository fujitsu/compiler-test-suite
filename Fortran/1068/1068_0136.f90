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
     class(*   ), allocatable :: var(:)
     class(base), allocatable :: v(:)
allocate(ext::v(3))
select type(p=>v)
 type is(ext)
     allocate(p(1)%name,source=repeat('1',10000))
     allocate(p(2)%name,source=repeat('1',10000))
     allocate(p(3)%name,source=repeat('1',10000))
write(381,"(z16.16)")loc(p(1)%name)
write(382,"(z16.16)")loc(p(2)%name)
write(383,"(z16.16)")loc(p(3)%name)
    end select
     allocate(base::var(3))
     var=v
     select type(p=>var)
       type is(ext)
         if (p(1)%name(:1)/='1') print *,202
         if (p(2)%name(:1)/='1') print *,202
         if (p(3)%name(:1)/='1') print *,202
write(384,"(z16.16)")loc(p(1))
write(385,"(z16.16)")loc(p(1)%name)
write(386,"(z16.16)")loc(p(2)%name)
write(387,"(z16.16)")loc(p(3)%name)
     end select
     end
     do n=1,10
      call s1
     end do
!    call chk(381)
!    call chk(382)
!    call chk(383)
!     call chk(384)
!     call chk(385)
!     call chk(386)
!     call chk(387)
     print *,'sngg894q : pass'
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

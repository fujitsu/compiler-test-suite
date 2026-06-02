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
     class(*   ), allocatable :: v(:)
allocate(ext::v(3))
select type(p=>v)
 type is(ext)
     allocate(p(1)%name,source=repeat('1',10000))
     allocate(p(2)%name,source=repeat('1',10000))
     allocate(p(3)%name,source=repeat('1',10000))
write(431,"(z16.16)")loc(p(1)%name)
write(432,"(z16.16)")loc(p(2)%name)
write(433,"(z16.16)")loc(p(3)%name)
    end select
     allocate(base::var(3))
     var=v
     select type(p=>var)
       type is(ext)
         if (p(1)%name(:1)/='1') print *,202
         if (p(2)%name(:1)/='1') print *,202
         if (p(3)%name(:1)/='1') print *,202
write(434,"(z16.16)")loc(p(1))
write(435,"(z16.16)")loc(p(1)%name)
write(436,"(z16.16)")loc(p(2)%name)
write(437,"(z16.16)")loc(p(3)%name)
     end select
     end
     do n=1,10
      call s1
     end do
!    call chk(431)
!    call chk(432)
!    call chk(433)
!     call chk(434)
!     call chk(435)
!     call chk(436)
!     call chk(437)
     print *,'sngg904q : pass'
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

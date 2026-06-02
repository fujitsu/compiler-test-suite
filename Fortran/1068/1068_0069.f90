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
write(181,"(z16.16)")loc(p(1)%name)
write(182,"(z16.16)")loc(p(2)%name)
write(183,"(z16.16)")loc(p(3)%name)
    end select
     allocate(var(3))
     var=v
     select type(p=>var)
       type is(ext)
         if (p(1)%name(:1)/='1') print *,202
         if (p(2)%name(:1)/='1') print *,202
         if (p(3)%name(:1)/='1') print *,202
write(184,"(z16.16)")loc(p(1))
write(185,"(z16.16)")loc(p(1)%name)
write(186,"(z16.16)")loc(p(2)%name)
write(187,"(z16.16)")loc(p(3)%name)
     end select
     end
     do n=1,30
      call s1
     end do
!    call chk(181)
!    call chk(182)
!    call chk(183)
!     call chk(184)
!     call chk(185)
!     call chk(186)
!     call chk(187)
     print *,'sngg827q : pass'
     end
      subroutine  chk(k)
     character(16)::x(1000)
     rewind (k)
     kk=1
     do
       read(k ,'(a)',end=100) x(kk)
       kk=kk+1
     end do
  100 continue
     kk=kk-1
     if (kk>1000) stop 999
     do nn=1,kk-1
      do nnn=nn+1,kk
        if (x(nn)==x(nnn)) return
      end do
     end do
  500 print *,"Please check UNIT",k
     end

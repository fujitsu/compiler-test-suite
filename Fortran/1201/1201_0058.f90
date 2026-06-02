     module mod
       type :: bx
          integer(8)::d3(3)
          character(:),allocatable::n(:,:,:)
       end type
       type, extends(bx) :: ex
          character(:),allocatable::name(:,:,:)
       end type

       type :: b
          integer(8)::d2(2)
         class(bx), allocatable :: y(:,:,:)
       end type
       type, extends(b) :: e
         class(bx), allocatable :: yy(:,:,:)
       end type

       type :: base
         integer(8)::d1
         class(b), allocatable :: z(:,:,:)
       end type
       type, extends(base) :: ext
         class(b), allocatable :: zz(:,:,:)
       end type
       integer,parameter::m=10000
 type x
     integer(8)::dt
     class(ext), allocatable :: var(:,:,:)
   end type
   contains
     subroutine s1(c)
      class(x)::c
     allocate(ext::c%var(2,2,2))
     write (222,"(z16.16)") loc(c%var)
     select type(p=>c%var)
      type is(ext)
        allocate(e::p(2,2,2)  %z(2,2,2))
        allocate(e::p(2,2,2)  %zz(2,2,2))
     write (223,"(z16.16)") loc(p(2,2,2)%z)
     write (224,"(z16.16)") loc(p(2,2,2)%zz)
        select type(q=> p(2,2,2)%z)
          type is(e)
            allocate(ex::q(2,2,2)  %y(2,2,2))
            allocate(ex::q(2,2,2)  %yy(2,2,2))
     write (225,"(z16.16)") loc(q(2,2,2)%y)
     write (226,"(z16.16)") loc(q(2,2,2)%yy)
            select type(w=> q(2,2,2)%y)
              type is(ex)
                allocate(character(m)::w(2,2,2)  %n(2,2,2))
                allocate(character(m)::w(2,2,2)  %name(2,2,2))
     write (227,"(z16.16)") loc(w(2,2,2)%n)
     write (228,"(z16.16)") loc(w(2,2,2)%name)
            end select
            select type(w=> q(2,2,2)%yy)
              type is(ex)
                allocate(character(m)::w(2,2,2)  %n(2,2,2))
                allocate(character(m)::w(2,2,2)  %name(2,2,2))
     write (229,"(z16.16)") loc(w(2,2,2)%n)
     write (230,"(z16.16)") loc(w(2,2,2)%name)
            end select
        end select
        select type(q=> p(2,2,2)%zz)
          type is(e)
            allocate(ex::q(2,2,2)  %y(2,2,2))
            allocate(ex::q(2,2,2)  %yy(2,2,2))
     write (231,"(z16.16)") loc(p(2,2,2)%z)
     write (232,"(z16.16)") loc(p(2,2,2)%zz)
            select type(w=> q(2,2,2)%y)
              type is(ex)
                allocate(character(m)::w(2,2,2)  %n(2,2,2))
                allocate(character(m)::w(2,2,2)  %name(2,2,2))
     write (233,"(z16.16)") loc(w(2,2,2)%n)
     write (234,"(z16.16)") loc(w(2,2,2)%name)
            end select
            select type(w=> q(2,2,2)%yy)
              type is(ex)
                allocate(character(m)::w(2,2,2)  %n(2,2,2))
                allocate(character(m)::w(2,2,2)  %name(2,2,2))
     write (235,"(z16.16)") loc(w(2,2,2)%n)
     write (236,"(z16.16)") loc(w(2,2,2)%name)
            end select
        end select
     end select

     is=0
     deallocate(c%var,stat=is)
     if (is/=0) print *,10001
     end
    subroutine s0
     class(x),allocatable::c
     allocate(c)
     do k=1,10
      call s1(c)
     end do
!     call chk(222)
!     call chk(223)
!     call chk(224)
!     call chk(225)
!     call chk(226)
!     call chk(227)
!     call chk(228)
!     call chk(229)
!     call chk(230)
!     call chk(231)
!     call chk(232)
!     call chk(233)
!     call chk(234)
!     call chk(235)
!     call chk(236)
     end
     end
use mod
    call s0
     print *,'sngg574q : pass'
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

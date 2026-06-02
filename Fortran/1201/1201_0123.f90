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
         class(*), allocatable :: z(:,:,:)
       end type
       type, extends(base) :: ext
         class(*), allocatable :: zz(:,:,:)
       end type
       integer,parameter::m=10000
 type x
     integer(8)::dt
     class(ext), allocatable :: var(:,:,:)
   end type
   contains
     subroutine s1(c,d,f)
      class(x)::c,d,f
     allocate(ext::c%var(2,2,2),d%var(2,2,2),f%var(2,2,2))
     write (541,"(z16.16)") loc(c%var)
     write (555,"(z16.16)") loc(d%var)
     write (556,"(z16.16)") loc(f%var)
     select type(p=>c%var)
      type is(ext)
        allocate(e::p(2,2,2)  %z(2,2,2))
        allocate(e::p(2,2,2)  %zz(2,2,2))
     write (542,"(z16.16)") loc(p(2,2,2)%z)
     write (543,"(z16.16)") loc(p(2,2,2)%zz)
        select type(q=> p(2,2,2)%z)
          type is(e)
            allocate(ex::q(2,2,2)  %y(2,2,2))
            allocate(ex::q(2,2,2)  %yy(2,2,2))
     write (544,"(z16.16)") loc(q(2,2,2)%y)
     write (545,"(z16.16)") loc(q(2,2,2)%yy)
            select type(w=> q(2,2,2)%y)
              type is(ex)
                allocate(character(m)::w(2,2,2)  %n(2,2,2))
                allocate(character(m)::w(2,2,2)  %name(2,2,2))
     write (546,"(z16.16)") loc(w(2,2,2)%n)
     write (547,"(z16.16)") loc(w(2,2,2)%name)
            end select
            select type(w=> q(2,2,2)%yy)
              type is(ex)
                allocate(character(m)::w(2,2,2)  %n(2,2,2))
                allocate(character(m)::w(2,2,2)  %name(2,2,2))
     write (548,"(z16.16)") loc(w(2,2,2)%n)
     write (549,"(z16.16)") loc(w(2,2,2)%name)
            end select
        end select
        select type(q=> p(2,2,2)%zz)
          type is(e)
            allocate(ex::q(2,2,2)  %y(2,2,2))
            allocate(ex::q(2,2,2)  %yy(2,2,2))
     write (550,"(z16.16)") loc(p(2,2,2)%z)
     write (551,"(z16.16)") loc(p(2,2,2)%zz)
            select type(w=> q(2,2,2)%y)
              type is(ex)
                allocate(character(m)::w(2,2,2)  %n(2,2,2))
                allocate(character(m)::w(2,2,2)  %name(2,2,2))
     write (552,"(z16.16)") loc(w(2,2,2)%n)
     write (553,"(z16.16)") loc(w(2,2,2)%name)
            end select
            select type(w=> q(2,2,2)%yy)
              type is(ex)
                allocate(character(m)::w(2,2,2)  %n(2,2,2))
                allocate(character(m)::w(2,2,2)  %name(2,2,2))
     write (554,"(z16.16)") loc(w(2,2,2)%n)
     write (555,"(z16.16)") loc(w(2,2,2)%name)
            end select
        end select
     end select
     select type(p=>d%var)
      type is(ext)
        allocate(e::p(2,2,2)  %z(2,2,2))
        allocate(e::p(2,2,2)  %zz(2,2,2))
        select type(q=> p(2,2,2)%z)
          type is(e)
            allocate(ex::q(2,2,2)  %y(2,2,2))
            allocate(ex::q(2,2,2)  %yy(2,2,2))
            select type(w=> q(2,2,2)%y)
              type is(ex)
                allocate(character(m)::w(2,2,2)  %n(2,2,2))
                allocate(character(m)::w(2,2,2)  %name(2,2,2))
            end select
            select type(w=> q(2,2,2)%yy)
              type is(ex)
                allocate(character(m)::w(2,2,2)  %n(2,2,2))
                allocate(character(m)::w(2,2,2)  %name(2,2,2))
            end select
        end select
        select type(q=> p(2,2,2)%zz)
          type is(e)
            allocate(ex::q(2,2,2)  %y(2,2,2))
            allocate(ex::q(2,2,2)  %yy(2,2,2))
            select type(w=> q(2,2,2)%y)
              type is(ex)
                allocate(character(m)::w(2,2,2)  %n(2,2,2))
                allocate(character(m)::w(2,2,2)  %name(2,2,2))
            end select
            select type(w=> q(2,2,2)%yy)
              type is(ex)
                allocate(character(m)::w(2,2,2)  %n(2,2,2))
                allocate(character(m)::w(2,2,2)  %name(2,2,2))
            end select
        end select
     end select
     select type(p=>f%var)
      type is(ext)
        allocate(e::p(2,2,2)  %z(2,2,2))
        allocate(e::p(2,2,2)  %zz(2,2,2))
        select type(q=> p(2,2,2)%z)
          type is(e)
            allocate(ex::q(2,2,2)  %y(2,2,2))
            allocate(ex::q(2,2,2)  %yy(2,2,2))
            select type(w=> q(2,2,2)%y)
              type is(ex)
                allocate(character(m)::w(2,2,2)  %n(2,2,2))
                allocate(character(m)::w(2,2,2)  %name(2,2,2))
            end select
            select type(w=> q(2,2,2)%yy)
              type is(ex)
                allocate(character(m)::w(2,2,2)  %n(2,2,2))
                allocate(character(m)::w(2,2,2)  %name(2,2,2))
            end select
        end select
        select type(q=> p(2,2,2)%zz)
          type is(e)
            allocate(ex::q(2,2,2)  %y(2,2,2))
            allocate(ex::q(2,2,2)  %yy(2,2,2))
            select type(w=> q(2,2,2)%y)
              type is(ex)
                allocate(character(m)::w(2,2,2)  %n(2,2,2))
                allocate(character(m)::w(2,2,2)  %name(2,2,2))
            end select
            select type(w=> q(2,2,2)%yy)
              type is(ex)
                allocate(character(m)::w(2,2,2)  %n(2,2,2))
                allocate(character(m)::w(2,2,2)  %name(2,2,2))
            end select
        end select
     end select

     is=0
     deallocate(c%var,d%var,f%var,stat=is)
     if (is/=0) print *,10001
     end
    subroutine s0
     class(x),allocatable::c,d,e
     allocate(c,d,e)
     do k=1,10
      call s1(c,d,e)
     end do
!     call chk(541)
!     call chk(542)
!     call chk(543)
!     call chk(544)
!     call chk(545)
!     call chk(546)
!     call chk(547)
!     call chk(548)
!     call chk(549)
!     call chk(550)
!     call chk(551)
!     call chk(552)
!     call chk(553)
!     call chk(554)
!     call chk(555)
!     call chk(556)
!     call chk(557)
     end
     end
use mod
    call s0
     print *,'sngg639q : pass'
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

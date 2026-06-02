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
         class(* ), allocatable :: y(:,:,:)
       end type
       type, extends(b) :: e
         class(* ), allocatable :: yy(:,:,:)
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
     class(*  ), allocatable :: var(:,:,:)
   end type
   contains
     subroutine s1(c)
      class(*)::c
select type(c)
 type is(x)
     allocate(ext::c%var(2,2,2))
     write (481,"(z16.16)") loc(c%var)
     select type(p=>c%var)
      type is(ext)
        allocate(e::p(2,2,2)  %z(2,2,2))
        allocate(e::p(2,2,2)  %zz(2,2,2))
     write (482,"(z16.16)") loc(p(2,2,2)%z)
     write (483,"(z16.16)") loc(p(2,2,2)%zz)
        select type(q=> p(2,2,2)%z)
          type is(e)
            allocate(ex::q(2,2,2)  %y(2,2,2))
            allocate(ex::q(2,2,2)  %yy(2,2,2))
     write (484,"(z16.16)") loc(q(2,2,2)%y)
     write (485,"(z16.16)") loc(q(2,2,2)%yy)
            select type(w=> q(2,2,2)%y)
              type is(ex)
                allocate(character(m)::w(2,2,2)  %n(2,2,2))
                allocate(character(m)::w(2,2,2)  %name(2,2,2))
     write (486,"(z16.16)") loc(w(2,2,2)%n)
     write (487,"(z16.16)") loc(w(2,2,2)%name)
            end select
            select type(w=> q(2,2,2)%yy)
              type is(ex)
                allocate(character(m)::w(2,2,2)  %n(2,2,2))
                allocate(character(m)::w(2,2,2)  %name(2,2,2))
     write (488,"(z16.16)") loc(w(2,2,2)%n)
     write (489,"(z16.16)") loc(w(2,2,2)%name)
            end select
        end select
        select type(q=> p(2,2,2)%zz)
          type is(e)
            allocate(ex::q(2,2,2)  %y(2,2,2))
            allocate(ex::q(2,2,2)  %yy(2,2,2))
     write (490,"(z16.16)") loc(p(2,2,2)%z)
     write (491,"(z16.16)") loc(p(2,2,2)%zz)
            select type(w=> q(2,2,2)%y)
              type is(ex)
                allocate(character(m)::w(2,2,2)  %n(2,2,2))
                allocate(character(m)::w(2,2,2)  %name(2,2,2))
     write (492,"(z16.16)") loc(w(2,2,2)%n)
     write (493,"(z16.16)") loc(w(2,2,2)%name)
            end select
            select type(w=> q(2,2,2)%yy)
              type is(ex)
                allocate(character(m)::w(2,2,2)  %n(2,2,2))
                allocate(character(m)::w(2,2,2)  %name(2,2,2))
     write (494,"(z16.16)") loc(w(2,2,2)%n)
     write (495,"(z16.16)") loc(w(2,2,2)%name)
            end select
        end select
     end select
end select

     is=0
select type(c)
 type is(x)
     deallocate(c%var,stat=is)
     end select
     if (is/=0) print *,10001
     end
    subroutine s0
     class(x),allocatable::c
     allocate(c)
     do k=1,10
      call s1(c)
     end do
!     call chk(481)
!     call chk(482)
!     call chk(483)
!     call chk(484)
!     call chk(485)
!     call chk(486)
!     call chk(487)
!     call chk(488)
!     call chk(489)
!     call chk(490)
!     call chk(491)
!     call chk(492)
!     call chk(493)
!     call chk(494)
!     call chk(495)
     end
     end
use mod
    call s0
     print *,'sngg634q : pass'
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

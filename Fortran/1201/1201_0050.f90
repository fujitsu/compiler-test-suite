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
     end

     subroutine s1
     use mod
     class(base), allocatable :: var(:,:,:)
     allocate(ext::var(2,2,2))
     write (192,"(z16.16)") loc(var)
     select type(p=>var)
      type is(ext)
        allocate(e::p(2,2,2)  %z(2,2,2))
        allocate(e::p(2,2,2)  %zz(2,2,2))
     write (193,"(z16.16)") loc(p(2,2,2)%z)
     write (194,"(z16.16)") loc(p(2,2,2)%zz)
        select type(q=> p(2,2,2)%z)
          type is(e)
            allocate(ex::q(2,2,2)  %y(2,2,2))
            allocate(ex::q(2,2,2)  %yy(2,2,2))
     write (195,"(z16.16)") loc(q(2,2,2)%y)
     write (196,"(z16.16)") loc(q(2,2,2)%yy)
            select type(w=> q(2,2,2)%y)
              type is(ex)
                allocate(character(m)::w(2,2,2)  %n(2,2,2))
                allocate(character(m)::w(2,2,2)  %name(2,2,2))
     write (197,"(z16.16)") loc(w(2,2,2)%n)
     write (198,"(z16.16)") loc(w(2,2,2)%name)
            end select
            select type(w=> q(2,2,2)%yy)
              type is(ex)
                allocate(character(m)::w(2,2,2)  %n(2,2,2))
                allocate(character(m)::w(2,2,2)  %name(2,2,2))
     write (199,"(z16.16)") loc(w(2,2,2)%n)
     write (200,"(z16.16)") loc(w(2,2,2)%name)
            end select
        end select
        select type(q=> p(2,2,2)%zz)
          type is(e)
            allocate(ex::q(2,2,2)  %y(2,2,2))
            allocate(ex::q(2,2,2)  %yy(2,2,2))
     write (201,"(z16.16)") loc(p(2,2,2)%z)
     write (202,"(z16.16)") loc(p(2,2,2)%zz)
            select type(w=> q(2,2,2)%y)
              type is(ex)
                allocate(character(m)::w(2,2,2)  %n(2,2,2))
                allocate(character(m)::w(2,2,2)  %name(2,2,2))
     write (203,"(z16.16)") loc(w(2,2,2)%n)
     write (204,"(z16.16)") loc(w(2,2,2)%name)
            end select
            select type(w=> q(2,2,2)%yy)
              type is(ex)
                allocate(character(m)::w(2,2,2)  %n(2,2,2))
                allocate(character(m)::w(2,2,2)  %name(2,2,2))
     write (205,"(z16.16)") loc(w(2,2,2)%n)
     write (206,"(z16.16)") loc(w(2,2,2)%name)
            end select
        end select
     end select

     is=0
     deallocate(var,stat=is)
     if (is/=0) print *,10001
     end
     do k=1,10
      call s1
     end do
!     call chk(192)
!     call chk(193)
!     call chk(194)
!     call chk(195)
!     call chk(196)
!     call chk(197)
!     call chk(198)
!     call chk(199)
!     call chk(200)
!     call chk(201)
!     call chk(202)
!     call chk(203)
!     call chk(204)
!     call chk(205)
!     call chk(206)
     print *,'sngg566q : pass'
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

     module mod
       type :: bx
          integer(8)::d3(3)
          character(:),allocatable::n
       end type
       type, extends(bx) :: ex
          character(:),allocatable::name
       end type

       type :: b
          integer(8)::d2(2)
         class(bx), allocatable :: y
       end type
       type, extends(b) :: e
         class(bx), allocatable :: yy
       end type

       type :: base
         integer(8)::d1
         class(b), allocatable :: z
       end type
       type, extends(base) :: ext
         class(b), allocatable :: zz
       end type
       integer,parameter::m=10000
  type x
     integer(8)::dt
     class(ext), allocatable :: var
   end type
   contains
     subroutine s1(c)
    class(x)::c
     allocate(ext::c%var)
     write (207,"(z16.16)") loc(c%var)
     select type(p=>c%var)
      type is(ext)
        allocate(e::p  %z)
        allocate(e::p  %zz)
     write (208,"(z16.16)") loc(p%z)
     write (209,"(z16.16)") loc(p%zz)
        select type(q=> p%z)
          type is(e)
            allocate(ex::q  %y)
            allocate(ex::q  %yy)
     write (210,"(z16.16)") loc(q%y)
     write (211,"(z16.16)") loc(q%yy)
            select type(w=> q%y)
              type is(ex)
                allocate(character(m)::w  %n)
                allocate(character(m)::w  %name)
     write (212,"(z16.16)") loc(w%n)
     write (213,"(z16.16)") loc(w%name)
            end select
            select type(w=> q%yy)
              type is(ex)
                allocate(character(m)::w  %n)
                allocate(character(m)::w  %name)
     write (214,"(z16.16)") loc(w%n)
     write (215,"(z16.16)") loc(w%name)
            end select
        end select
        select type(q=> p%zz)
          type is(e)
            allocate(ex::q  %y)
            allocate(ex::q  %yy)
     write (216,"(z16.16)") loc(p%z)
     write (217,"(z16.16)") loc(p%zz)
            select type(w=> q%y)
              type is(ex)
                allocate(character(m)::w  %n)
                allocate(character(m)::w  %name)
     write (218,"(z16.16)") loc(w%n)
     write (219,"(z16.16)") loc(w%name)
            end select
            select type(w=> q%yy)
              type is(ex)
                allocate(character(m)::w  %n)
                allocate(character(m)::w  %name)
     write (220,"(z16.16)") loc(w%n)
     write (221,"(z16.16)") loc(w%name)
            end select
        end select
     end select

     is=0
     deallocate(c%var,stat=is)
     if (is/=0) print *,10001
     end
     end

    subroutine s0
     use mod
     class(x),allocatable::c
     allocate(c)
     do k=1,10
      call s1(c)
     end do
!     call chk(207)
!     call chk(208)
!     call chk(209)
!     call chk(210)
!     call chk(211)
!     call chk(212)
!     call chk(213)
!     call chk(214)
!     call chk(215)
!     call chk(216)
!     call chk(217)
!     call chk(218)
!     call chk(219)
!     call chk(220)
!     call chk(221)
     end
      call s0
     print *,'sngg573q : pass'
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

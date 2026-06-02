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
     end

     subroutine s1
     use mod
     class(base), allocatable :: var
     allocate(ext::var)
     write (177,"(z16.16)") loc(var)
     select type(p=>var)
      type is(ext)
        allocate(e::p  %z)
        allocate(e::p  %zz)
     write (178,"(z16.16)") loc(p%z)
     write (179,"(z16.16)") loc(p%zz)
        select type(q=> p%z)
          type is(e)
            allocate(ex::q  %y)
            allocate(ex::q  %yy)
     write (180,"(z16.16)") loc(q%y)
     write (181,"(z16.16)") loc(q%yy)
            select type(w=> q%y)
              type is(ex)
                allocate(character(m)::w  %n)
                allocate(character(m)::w  %name)
     write (182,"(z16.16)") loc(w%n)
     write (183,"(z16.16)") loc(w%name)
            end select
            select type(w=> q%yy)
              type is(ex)
                allocate(character(m)::w  %n)
                allocate(character(m)::w  %name)
     write (184,"(z16.16)") loc(w%n)
     write (185,"(z16.16)") loc(w%name)
            end select
        end select
        select type(q=> p%zz)
          type is(e)
            allocate(ex::q  %y)
            allocate(ex::q  %yy)
     write (186,"(z16.16)") loc(p%z)
     write (187,"(z16.16)") loc(p%zz)
            select type(w=> q%y)
              type is(ex)
                allocate(character(m)::w  %n)
                allocate(character(m)::w  %name)
     write (188,"(z16.16)") loc(w%n)
     write (189,"(z16.16)") loc(w%name)
            end select
            select type(w=> q%yy)
              type is(ex)
                allocate(character(m)::w  %n)
                allocate(character(m)::w  %name)
     write (190,"(z16.16)") loc(w%n)
     write (191,"(z16.16)") loc(w%name)
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
!     call chk(177)
!     call chk(178)
!     call chk(179)
!     call chk(180)
!     call chk(181)
!     call chk(182)
!     call chk(183)
!     call chk(184)
!     call chk(185)
!     call chk(186)
!     call chk(187)
!     call chk(188)
!     call chk(189)
!     call chk(190)
!     call chk(191)
     print *,'sngg565q : pass'
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

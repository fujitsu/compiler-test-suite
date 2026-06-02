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
         class(* ), allocatable :: y
       end type
       type, extends(b) :: e
         class(* ), allocatable :: yy
       end type

       type :: base
         integer(8)::d1
         class(*), allocatable :: z
       end type
       type, extends(base) :: ext
         class(*), allocatable :: zz
       end type
       integer,parameter::m=10000
  type x
     integer(8)::dt
     class(*  ), allocatable :: var
   end type
   contains
     subroutine s1(c)
    class(x)::c
     allocate(ext::c%var)
     write (461,"(z16.16)") loc(c%var)
     select type(p=>c%var)
      type is(ext)
        allocate(e::p  %z)
        allocate(e::p  %zz)
     write (462,"(z16.16)") loc(p%z)
     write (463,"(z16.16)") loc(p%zz)
        select type(q=> p%z)
          type is(e)
            allocate(ex::q  %y)
            allocate(ex::q  %yy)
     write (464,"(z16.16)") loc(q%y)
     write (465,"(z16.16)") loc(q%yy)
            select type(w=> q%y)
              type is(ex)
                allocate(character(m)::w  %n)
                allocate(character(m)::w  %name)
     write (466,"(z16.16)") loc(w%n)
     write (467,"(z16.16)") loc(w%name)
            end select
            select type(w=> q%yy)
              type is(ex)
                allocate(character(m)::w  %n)
                allocate(character(m)::w  %name)
     write (468,"(z16.16)") loc(w%n)
     write (469,"(z16.16)") loc(w%name)
            end select
        end select
        select type(q=> p%zz)
          type is(e)
            allocate(ex::q  %y)
            allocate(ex::q  %yy)
     write (470,"(z16.16)") loc(p%z)
     write (471,"(z16.16)") loc(p%zz)
            select type(w=> q%y)
              type is(ex)
                allocate(character(m)::w  %n)
                allocate(character(m)::w  %name)
     write (472,"(z16.16)") loc(w%n)
     write (473,"(z16.16)") loc(w%name)
            end select
            select type(w=> q%yy)
              type is(ex)
                allocate(character(m)::w  %n)
                allocate(character(m)::w  %name)
     write (474,"(z16.16)") loc(w%n)
     write (475,"(z16.16)") loc(w%name)
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
!     call chk(461)
!     call chk(462)
!     call chk(463)
!     call chk(464)
!     call chk(465)
!     call chk(466)
!     call chk(467)
!     call chk(468)
!     call chk(469)
!     call chk(470)
!     call chk(471)
!     call chk(472)
!     call chk(473)
!     call chk(474)
!     call chk(475)
     end
      call s0
     print *,'sngg633q : pass'
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

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
     end

     subroutine s1
     use mod
     class(*   ), allocatable :: var
     allocate(ext::var)
     write (426,"(z16.16)") loc(var)
     select type(p=>var)
      type is(ext)
        allocate(e::p  %z)
        allocate(e::p  %zz)
     write (427,"(z16.16)") loc(p%z)
     write (428,"(z16.16)") loc(p%zz)
        select type(q=> p%z)
          type is(e)
            allocate(ex::q  %y)
            allocate(ex::q  %yy)
     write (429,"(z16.16)") loc(q%y)
     write (430,"(z16.16)") loc(q%yy)
            select type(w=> q%y)
              type is(ex)
                allocate(character(m)::w  %n)
                allocate(character(m)::w  %name)
     write (431,"(z16.16)") loc(w%n)
     write (432,"(z16.16)") loc(w%name)
            end select
            select type(w=> q%yy)
              type is(ex)
                allocate(character(m)::w  %n)
                allocate(character(m)::w  %name)
     write (433,"(z16.16)") loc(w%n)
     write (434,"(z16.16)") loc(w%name)
            end select
        end select
        select type(q=> p%zz)
          type is(e)
            allocate(ex::q  %y)
            allocate(ex::q  %yy)
     write (435,"(z16.16)") loc(p%z)
     write (436,"(z16.16)") loc(p%zz)
            select type(w=> q%y)
              type is(ex)
                allocate(character(m)::w  %n)
                allocate(character(m)::w  %name)
     write (437,"(z16.16)") loc(w%n)
     write (438,"(z16.16)") loc(w%name)
            end select
            select type(w=> q%yy)
              type is(ex)
                allocate(character(m)::w  %n)
                allocate(character(m)::w  %name)
     write (439,"(z16.16)") loc(w%n)
     write (440,"(z16.16)") loc(w%name)
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
!     call chk(426)
!     call chk(427)
!     call chk(428)
!     call chk(429)
!     call chk(430)
!     call chk(431)
!     call chk(432)
!     call chk(433)
!     call chk(434)
!     call chk(435)
!     call chk(436)
!     call chk(437)
!     call chk(438)
!     call chk(439)
!     call chk(440)
     print *,'sngg625q : pass'
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

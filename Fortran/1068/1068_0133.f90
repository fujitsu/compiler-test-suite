     module mod
       integer,parameter::mm=1000
       type :: base
          integer(8)::d0(2)
       end type base

       type, extends(base) :: ext
          integer(8)::d1
          character(:),allocatable::name(:)
       end type ext

       type y
         integer(8)::yd(4)
         class(*   ), allocatable :: var(:)
       end type
       type z
         integer(8)::zd(6)
         type(y),allocatable :: zv(:)
       end type
contains
       subroutine ss(yv  , value)
         type(z)::yv(:)
         class(base), intent(in) :: value
          do m=2,size(yv)
         yv(m)%zv(m)%var=value
          end do
         write (358,"(z16.16)") loc(yv(2)%zv(2)%var)
       end subroutine

     subroutine s1(nn)
         class(z),allocatable::yv(: )
     class(base), allocatable :: value
     allocate(yv(nn))
     do m=2,size(yv)
     allocate(yv(m)%zv(m))
     allocate(ext::yv(m)%zv(m)%var(2))
     end do
         write (359,"(z16.16)") loc(yv(2)%zv(2)%var)
     select type(p=>yv(2)%zv(2)%var)
       type is(ext)
         allocate(character(mm)::p(1)%name(2))
         allocate(character(mm)::p(2)%name(2))
         write (357,"(z16.16)") loc(p(1)%name)
     end select
     allocate(value)
     call ss(yv , value)
     end
     end
     subroutine dg
     use mod
     do n=1,30
      call s1(2)
     end do
     end
     call dg
!    call chk(357)
!    call chk(358)
!    call chk(359)
     print *,'sngg891q : pass'
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

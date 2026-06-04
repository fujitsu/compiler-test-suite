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
         class(base), allocatable :: var(:)
       end type
       type z
         integer(8)::zd(6)
         type(y) :: zv(2)
       end type
contains
       subroutine ss(yv  , value)
         type(z),allocatable::yv(:)
         class(base), intent(in) :: value(:)
          do m=2,size(yv)
         yv(m)%zv(m)%var=value
          end do
         write (141,"(z16.16)") loc(yv(2)%zv(2)%var)
       end subroutine

     subroutine s1(nn)
         type(z),allocatable::yv(:)
     class(base), allocatable :: value(:)
     allocate(yv(nn))
     do m=2,size(yv)
     allocate(ext::yv(m)%zv(m)%var(2))
     end do
         write (142,"(z16.16)") loc(yv(2)%zv(2)%var)
     select type(p=>yv(2)%zv(2)%var)
       type is(ext)
         allocate(character(mm)::p(1)%name(2))
         allocate(character(mm)::p(2)%name(2))
         write (140,"(z16.16)") loc(p(1)%name)
     end select
     allocate(value(2))
     call ss(yv , value)
     end
     end
     subroutine dg
     use mod
     do n=1,10
      call s1(2)
     end do
     end
     call dg
 !   call chk(140)
 !   call chk(141)
 !   call chk(142)
     print *,'sngg816q : pass'
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

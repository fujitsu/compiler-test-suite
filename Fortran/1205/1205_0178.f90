     module mod
       type :: b
          integer::d1
          class(*),allocatable::n(:)
       end type
       type,extends(b) :: e
          integer::d2
          character(:),allocatable::c(:)
       end type
       character(*),parameter::cp=repeat('1',1000)
contains
  subroutine ss0(d)
     class (*),allocatable :: d(:)
select type(d)
  class is(b)
     d  (2)%d1=2
     allocate(e::d  (2)%n(2))
     call ss1(d  (2)%n)
end select
  end
  subroutine ss1(g)
     class (*),allocatable :: g(:)
select type(g)
  class is(b)
     g  (2)%d1=2
     allocate(e::g  (2)%n(2))
     call ss2(g  (2)%n)
end select
  end
  subroutine ss2(f)
     class (*),allocatable :: f(:)
select type(f)
  class is(b)
     f  (2)%d1=2
end select
  end
     end module mod

     subroutine s1
     use mod
     type  (b),allocatable :: v
     allocate(b::v)
     v%d1=1
     allocate(b::v%n(2))
     call ss0(v%n)
     end
use mod
!do n=1,20
      call s1
!end do
     print *,'sngg225r : pass'
     end

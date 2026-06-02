     module mod
       type :: b
          integer::d1
          class(b),allocatable::n(:)
       end type
       type,extends(b) :: e
          integer::d2
          character(:),allocatable::c(:)
       end type
       character(*),parameter::cp=repeat('1',1000)
contains
  subroutine ss0(d)
     class (b),allocatable :: d(:)
     d  (2)%d1=2
     allocate(e::d  (2)%n(2)) 
     call ss1(d  (2)%n)
  end 
  subroutine ss1(g)
     class (b),allocatable :: g(:)
     g  (2)%d1=2
     allocate(e::g  (2)%n(2)) 
     call ss2(g  (2)%n)
  end 
  subroutine ss2(f)
     class (b),allocatable :: f(:)
     f  (2)%d1=2
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
     print *,'sngg107r : pass'
     end 

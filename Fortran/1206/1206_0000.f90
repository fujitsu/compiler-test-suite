     module mod
       type :: b
          integer::d1
          class(b),allocatable::n(:)
       end type
       type,extends(b) :: e
          integer::d2
       end type
 contains

     subroutine s1(k)
type w
     integer(8)::d1
     class (b),allocatable :: v(:),u(:)
end type
type(w)::z(k)
mm=2
     allocate(b::z(mm)%v(mm))
     z(mm)%v(mm)%d1=1
     allocate(b::z(mm)%v(mm)%n(mm))
     z(mm)%v(mm)%n(mm)%d1=2
     allocate(b::z(mm)%v(mm)%n(mm)%n(mm))
     z(mm)%v(mm)%n(mm)%n(mm)%d1=3

     z(mm)%u=z(mm)%v

     if (z(mm)%u(mm)%d1/=1) print *,10001
     if (z(mm)%u(mm)%n(mm)%d1/=2) print *,10002
     if (z(mm)%u(mm)%n(mm)%n(mm)%d1/=3) print *,10003
     if (allocated(z(mm)%u(mm)%n(mm)%n(mm)%n)) print *,10004
     deallocate(z(mm)%v)
     !!!deallocate(z(2)%u)
     end
end
use mod
      call s1(2)
     print *,'sngg269r : pass'
     end 

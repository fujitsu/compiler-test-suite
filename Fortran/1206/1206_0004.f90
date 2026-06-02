     module mod
       type :: b
          integer::d1
          type (b),allocatable::n(:)
       end type
       type,extends(b) :: e
          integer::d2
       end type
 contains

     subroutine s1(k)
type w
     integer(8)::d1
     type  (b),allocatable :: v(:)
     class (b),allocatable :: u(:)
end type
type(w)::z(2)
!type(w)::y(k)
mm=2
if (mm==1) then
     z(mm)%u=z(1 )%v
     !z(mm)%u=z(mm)%v
     !z(mm)%u=z(mm)%v
     !u=z(mm)%v
     !z(mm)%v=u        
end if
end
end
use mod
      call s1(2)
     print *,'sngg273r : pass'
     end 

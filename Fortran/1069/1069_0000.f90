     module mod
       integer,parameter::m=10000
       type :: base
         integer(8)::d1(2)
    !     character(:),allocatable::n
       end type
       type x
         integer(8)::d
        class(*   ),allocatable::v
       end type
       character(*),parameter::a=repeat('1',m)
       character(*),parameter::b=repeat('2',m)
       character(*),parameter::c=repeat('3',m)
contains
     end module mod

     subroutine s1
     use mod
     class (*),allocatable :: xv
     type (x) :: yv
     yv%d=1
     
      xv=yv

    if (.not.allocated(xv)) print *,19021
k=0
select type(xv)
type is(x)
k=1
    if (xv%d/=1) print *,19022
end select
    if (k   /=1) print *,29022
     end
use mod
do n=1,20
      call s1
end do
     print *,'sngg001r : pass'
     end 

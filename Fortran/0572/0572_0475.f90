type t1
real c
end type
 type, extends(t1) :: t2
 end type
 class(t1), pointer :: r(:,:),q(:,:)
 allocate(t1 :: q(2,3))
 allocate(t2 :: r(2,3))
call sub(q,r)        
        contains
        subroutine sub(x,y)
       class(*)  :: x(..),y(..)
        if(extends_type_of(x,y) .neqv. .false.) print*,"101"
        if(extends_type_of(y,x) .neqv. .true.) print*,"103"
        if(rank(x) .ne. 2) print*,"202"
        print*, "pass"
        end subroutine 
end


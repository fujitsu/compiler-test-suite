type t1
real c
end type
 type, extends(t1) :: t2
 end type
 class(t1), pointer :: r(:,:)
 allocate(t2 :: r(2,3))
call sub(r(1,:))        
        contains
        subroutine sub(x)
        class(*),contiguous :: x(:)
        if(extends_type_of(x,r) .neqv. .true.) print*,"101"
        if(is_contiguous(x) .neqv..true.) print*,"202"
        print*, "pass"
        call s2(x)
        end subroutine 
        subroutine s2(x)
        class(*),contiguous :: x(:)
        if(extends_type_of(x,r) .neqv. .true.) print*,"102"
        if(is_contiguous(x) .neqv..true.) print*,"102"
        end subroutine 
end


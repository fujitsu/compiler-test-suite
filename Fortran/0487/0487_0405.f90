module m1
   use iso_c_binding
  contains
    subroutine s1(a1)
     character(3),target::a1
     type(c_ptr):: x1
     x1= c_loc( a1 )
     if (.not.c_associated(x1)) print *,101
    end subroutine
    subroutine s2(a1)
     character(3),pointer::a1
     type(c_ptr),target:: x1
     x1= c_loc( a1 )
     if (.not.c_associated(x1)) print *,102
    end subroutine
    subroutine s3(a1)
     character(3),allocatable,target::a1
     type(c_ptr):: x1
     x1= c_loc( a1 )
     if (.not.c_associated(x1)) print *,103
    end subroutine
    subroutine s4(a1)
     character(3),target::a1(..)
     type(c_ptr),target:: x1
     x1= c_loc( a1 )
     if (.not.c_associated(x1)) print *,104
    end subroutine
end
use m1
character(3)::a1
character(3),pointer::a2
character(3),allocatable::a3
character(3)::a4
allocate( a2 ,  a3)
call s1(a1)
call s2(a2)
call s3(a3)
call s4(a4)
print *,'pass'
end

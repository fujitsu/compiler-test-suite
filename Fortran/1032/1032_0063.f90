     module mod
       type t2
        integer,allocatable :: e2(:)
       end type t2
       type t1
        type(t2) ::e1
       end type t1
       type(t1),allocatable :: mv3(:,:)
     end module mod
      program main
          use mod,uv3=>mv3
           call insub()
print *,'pass'
          contains
         subroutine insub()
         use mod,mv3=>mv3
         allocate(mv3(2,2))
         if (allocated(uv3(1,1)%e1%e2)) print *,"ERROR1"
         allocate (mv3(1,1)%e1%e2(1))
        if (.not.allocated(uv3(1,1)%e1%e2)) print *,"ERROR2"
         if (allocated(uv3(2,2)%e1%e2)) print *,"ERROR3"
         deallocate(uv3)
         end subroutine insub
       end program main

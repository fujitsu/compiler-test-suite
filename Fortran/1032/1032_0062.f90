     module mod
       type t1
        integer,allocatable :: e1(:)
       end type t1
       type(t1),allocatable :: mv3(:,:),mv4(:,:)
     end module mod
      program main
          use mod,uv3=>mv3
           call insub()
           print *,'pass'
          contains
         subroutine insub()
         use mod,mv3=>mv3
         allocate(mv3(2,2))
         if (allocated(uv3(1,1)%e1)) print *,"ERROR1"
         allocate (mv3(1,1)%e1(1))
        if (.not.allocated(uv3(1,1)%e1)) print *,"ERROR2"
         if (allocated(uv3(2,2)%e1)) print *,"ERROR3"
         deallocate(uv3)
         allocate(mv4(2,2))
         end subroutine insub
       end program main

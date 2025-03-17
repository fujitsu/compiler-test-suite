      module m
       type z
        real(8),allocatable,dimension(:,:)::za
       end type z
      contains
        function func() result(pp)
         type(z),pointer::pp
          allocate(pp)
          allocate(pp%za(10,10))
        end function func
      end module m

      program main
       use m
       type(z),pointer::qq
       do i=1,10
         allocate(qq)
         qq=func()
         deallocate(qq)
       enddo
       print *,'pass'
      end program main

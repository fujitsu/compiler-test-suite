      type z
        integer,allocatable::za(:)
      end type
      type y1
        type(z),pointer::p1(:)
      end type
      type y2
        type(z),pointer::p2(:)
      end type
      type(y1)::yy1
      type(y2)::yy2
       allocate(yy2%p2(3))
       allocate(yy2%p2(1)%za(3))
       yy2%p2(1)%za = (/1,2,3/)
       allocate(yy1%p1(3))

       yy1%p1(2:3) = yy2%p2(1:2)

       deallocate(yy2%p2(1)%za)
       allocate(yy2%p2(1)%za(10))
       yy2%p2(1)%za=0
       if (allocated(yy1%p1(1)%za)) print *,'error 1'
       if (.not.allocated(yy1%p1(2)%za)) print *,'error 2'
       if (allocated(yy1%p1(3)%za)) print *,'error 3'
       if (any(yy1%p1(2)%za/=(/1,2,3/))) print *,'error 4',yy1%p1(1)%za
       print *,'pass'
      end

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
       allocate(yy2%p2(1))
       allocate(yy2%p2(1)%za(3))
       yy2%p2(1)%za = (/1,2,3/)
       allocate(yy1%p1(1))

       yy1%p1 = yy2%p2

       deallocate(yy1%p1(1)%za)
       allocate(yy1%p1(1)%za(10))
       yy1%p1(1)%za=0
       if (any(yy2%p2(1)%za/=(/1,2,3/))) print *,'error-1',yy2%p2(1)%za
       print *,'pass'
      end

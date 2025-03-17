      type z
        integer,allocatable::za(:)
      end type
      type y1
        type(z),pointer::y1_zp
      end type
      type y2
        type(z)        ::y2_z
      end type
      type(y1)::yy1
      type(y2)::yy2

       allocate(yy1%y1_zp)
       yy1%y1_zp = z((/1,2,3/))
       if (.not.allocated(yy1%y1_zp%za)) print *,'error-0'

       yy2%y2_z = yy1%y1_zp

       deallocate(yy1%y1_zp%za)
       allocate(yy1%y1_zp%za(10))
       yy1%y1_zp%za=0
       if (any(yy2%y2_z%za/=(/1,2,3/))) print *,'error0',yy2%y2_z%za
       print *,'pass'
      end

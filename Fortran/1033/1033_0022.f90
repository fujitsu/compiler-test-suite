      type z
        integer,allocatable::za(:)
      end type
      type y1
        type(z)        ::y1_zp
      end type
      type y2
        type(z)        ::y2_z
      end type
      type(y1)::yy1
      type(y2)::yy2

       allocate(yy2%y2_z%za(3))
       yy2%y2_z%za = (/1,2,3/)

       yy1%y1_zp = yy2%y2_z

       if (any(yy2%y2_z%za/=(/1,2,3/))) print *,'error-1',yy2%y2_z%za
       print *,'pass'
      end

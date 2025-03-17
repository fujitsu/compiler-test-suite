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

       allocate(yy2%y2_z%za(3))
       yy2%y2_z%za = (/1,2,3/)
       allocate(yy1%y1_zp)

       yy1%y1_zp = yy2%y2_z

       deallocate(yy2%y2_z%za)
       allocate(yy2%y2_z%za(10))
       yy2%y2_z%za=0
       if (any(yy1%y1_zp%za/=(/1,2,3/))) print *,'error1',yy1%y1_zp%za
       print *,'pass'
      end

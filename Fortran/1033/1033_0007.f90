      type z
        integer,allocatable::za(:)
      end type
      type x
        type(z)::z_x
      end type
      type y1
        type(x),pointer::y1_zp
      end type
      type y2
        type(x)        ::y2_z
      end type
      type(y1)::yy1
      type(y2)::yy2

       allocate(yy2%y2_z%z_x%za(3))
       yy2%y2_z%z_x%za = (/1,2,3/)
       allocate(yy1%y1_zp)

       yy1%y1_zp%z_x = yy2%y2_z%z_x

       deallocate(yy2%y2_z%z_x%za)
       allocate(yy2%y2_z%z_x%za(10))
       yy2%y2_z%z_x%za=777
       if (any(yy1%y1_zp%z_x%za/=(/1,2,3/))) print *,'error-1',yy1%y1_zp%z_x%za
       print *,'pass'
      end

      type z
        integer,allocatable::za(:)
      end type
      type x
        type(z)::z_x
      end type
      type y
        type(x),pointer::y_zp
        type(x)        ::y_z
      end type
      type(y)::yy1,yy2

       allocate(yy2%y_z%z_x%za(3))
       yy2%y_z%z_x%za = (/1,2,3/)
       allocate(yy1%y_zp)

       yy1%y_zp%z_x = yy2%y_z%z_x

       deallocate(yy1%y_zp%z_x%za)
       allocate(yy1%y_zp%z_x%za(10))
       yy1%y_zp%z_x%za=777
       if (any(yy2%y_z%z_x%za/=(/1,2,3/))) print *,'error-1',yy2%y_z%z_x%za
       print *,'pass'
      end

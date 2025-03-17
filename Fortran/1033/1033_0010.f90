      type z
        integer,allocatable::za(:)
      end type
      type x1
        type(z)::z_x1
      end type
      type x2
        type(z)::z_x2
      end type
      type y
        type(x1),pointer::y_zp
        type(x2)        ::y_z
      end type
      type(y)::yy1,yy2

       allocate(yy2%y_z%z_x2%za(3))
       yy2%y_z%z_x2%za = (/1,2,3/)
       allocate(yy1%y_zp)

       yy1%y_zp%z_x1 = yy2%y_z%z_x2

       deallocate(yy1%y_zp%z_x1%za)
       allocate(yy1%y_zp%z_x1%za(10))
       yy1%y_zp%z_x1%za=777
       if (any(yy2%y_z%z_x2%za/=(/1,2,3/))) print *,'error-1',yy2%y_z%z_x2%za
       print *,'pass'
      end

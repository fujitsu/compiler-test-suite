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

       allocate(yy1%y1_zp)
       yy1%y1_zp%z_x = z((/1,2,3/))
       if (.not.allocated(yy1%y1_zp%z_x%za)) print *,'error-0'

       yy2%y2_z%z_x = yy1%y1_zp%z_x

       deallocate(yy1%y1_zp%z_x%za)
       allocate(yy1%y1_zp%z_x%za(10))
       yy1%y1_zp%z_x%za=777
       if (any(yy2%y2_z%z_x%za/=(/1,2,3/))) print *,'error-1',yy2%y2_z%z_x%za

       yy1%y1_zp = x(z((/4,5,6/)))
       if (.not.allocated(yy1%y1_zp%z_x%za)) print *,'error-2'

       yy2%y2_z%z_x = yy1%y1_zp%z_x

       deallocate(yy1%y1_zp%z_x%za)
       allocate(yy1%y1_zp%z_x%za(4))
       yy1%y1_zp%z_x%za=(/11,12,13,14/)
       if (any(yy2%y2_z%z_x%za/=(/4,5,6/))) print *,'error-3',yy2%y2_z%z_x%za
       if (any(yy1%y1_zp%z_x%za/=(/11,12,13,14/))) print *,'error-3',yy1%y1_zp%z_x%za

       print *,'pass'
      end

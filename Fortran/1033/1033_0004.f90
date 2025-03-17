      type z
        integer,allocatable::za(:)
      end type
      type y1
        type(z),pointer::y1_zp
        type(z)        ::y1_z
      end type
      type(y1)::yy1

       allocate(yy1%y1_z%za(3))
       yy1%y1_z%za = (/1,2,3/)
       allocate(yy1%y1_zp)

       yy1%y1_zp = yy1%y1_z

       deallocate(yy1%y1_zp%za)
       allocate(yy1%y1_zp%za(10))
       yy1%y1_zp%za=0
       if (any(yy1%y1_z%za/=(/1,2,3/))) print *,'error1',yy1%y1_z%za
       print *,'pass'
      end

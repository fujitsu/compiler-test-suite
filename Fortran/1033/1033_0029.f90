      type z
        integer,allocatable::za(:)
      end type
      type y1
        type(z),pointer::y1_zp(:)
      end type
      type y2
        type(z)        ::y2_z
      end type
      type(y1)::yy1
      type(y2)::yy2
       allocate(yy2%y2_z%za(3))
       yy2%y2_z%za = (/1,2,3/)
       allocate(yy1%y1_zp(1))
       yy1%y1_zp = yy2%y2_z

       deallocate(yy1%y1_zp(1)%za)
       allocate(yy1%y1_zp(1)%za(10))
       yy1%y1_zp(1)%za=0
       if (any(yy2%y2_z%za/=(/1,2,3/))) print *,'error-1',yy2%y2_z%za
       print *,'pass'
      end

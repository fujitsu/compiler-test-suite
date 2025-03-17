      type z
        integer,allocatable::za(:)
      end type
        type(z),pointer::y1_zp
        type(z)        ::y2_z

       allocate(y2_z%za(3))
       y2_z%za = (/1,2,3/)

       allocate(y1_zp)
       y1_zp = y2_z

       deallocate(y1_zp%za)
       allocate(y1_zp%za(10))
       y1_zp%za=0
       if (any(y2_z%za/=(/1,2,3/))) print *,'error-1',y2_z%za
       print *,'pass'
      end

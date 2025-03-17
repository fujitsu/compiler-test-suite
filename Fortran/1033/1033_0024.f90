      type z
        integer,allocatable::za(:)
      end type
        type(z),pointer::y1_zp(:)
        type(z)        ::y2_z

       allocate(y2_z%za(3))
       y2_z%za = (/1,2,3/)

       allocate(y1_zp(1))
       y1_zp(1) = y2_z

       deallocate(y2_z%za)
       allocate(y2_z%za(1))
       y2_z%za=0
       if (any(y1_zp(1)%za/=(/1,2,3/))) print *,'error-1',y1_zp(1)%za
       print *,'pass'
      end

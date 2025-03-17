      type z
        integer,allocatable::za(:)
      end type
        type(z),pointer::y1_zp
        type(z)        ::y2_z

       allocate(y2_z%za(100))
       y2_z = z((/1,2,3/))
       allocate(y1_zp)
       allocate(y1_zp%za(100))
       y1_zp = z((/4,5,6,7,8/))

       if (any(y2_z%za/=(/1,2,3/))) print *,'error-1',y2_z%za
       if (any(y1_zp%za/=(/4,5,6,7,8/))) print *,'error-2',y1_zp%za
       print *,'pass'
      end

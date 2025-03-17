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

       allocate(yy1%y1_zp)
       yy1%y1_zp = z((/1,2,3/))
       if (.not.allocated(yy1%y1_zp%za)) then
         print *,'error-1'
       endif
       yy2%y2_z = z((/11,12,13,14,15/))
       if (.not.allocated(yy2%y2_z%za)) then
         print *,'error-2'
       endif

       yy1%y1_zp = yy2%y2_z

       deallocate(yy2%y2_z%za)
       allocate(yy2%y2_z%za(10))
       yy2%y2_z%za=777
       if (any(yy1%y1_zp%za/=(/11,12,13,14,15/))) print *,'error-3',yy1%y1_zp%za
       print *,'pass'
      end

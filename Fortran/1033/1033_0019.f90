      type z
        integer,allocatable::za(:)
      end type
      type(z),pointer::p
      type(z),target ::t

       allocate(t%za(3))
       t%za = (/1,2,3/)

       allocate(p)
       p = t

       deallocate(p%za)
       allocate(p%za(10))
       p%za=0

       if (any(t%za/=(/1,2,3/))) then
         print *,'error-1',t%za
       else
         print *,'pass'
       endif
      end

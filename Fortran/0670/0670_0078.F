      integer i(100)
      i(01)
     1=1
 /*  
      i(01)=
     1100
      */
      i(02)
     1=1
      /*   \
      i(02)=100 \
 */
   !   \
      i(03)
     1=1
   !   \
   !   \
   !   \
      i(04)
      !   \
      !   \
      !   \
     1=1
       if (any(i(:4)/=1))print *,'error',i(:4)
       print *,'pass'
      end
    
    

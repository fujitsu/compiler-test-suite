    module mod
      real ,dimension(10) :: var
      real ,dimension(20) ,target :: array
       pointer (ptr,var)
      end

     use mod
      real ,dimension(10) :: varx
       pointer (ptrx,varx)
      ptr = loc(array)
      var(1) = 1.0 
      if (array(1)/=1) print *,101 
      ptrx = loc(array) 
      varx(1) = 1.0 
      if (array(1)/=1) print *,102
print *,'pass'
      end

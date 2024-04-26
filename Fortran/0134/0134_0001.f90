subroutine t1(fpx)
 interface  
   function fpx(i)
     character(i),pointer::fpx
   end function
 end interface
 if (fpx(2)/='xy')print *,'error-01'
end
subroutine t0
 interface  
   function fpx(i)
     character(i),pointer::fpx
   end function
 end interface
 procedure(fpx)        ::fx2
 call t1(fx2)
 if (fpx(2)/='xy')print *,'error-01'
 if (fx2(2)/='xy')print *,'error-02'
end subroutine

call t0
print *,'pass'
end

   function fpx(i) result(r)
   entry    fx2(i) result(r)
     character(i),pointer::r  
     allocate(r)
     r='xy'
   end function

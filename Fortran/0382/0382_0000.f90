subroutine t1(f5)
 interface  
   function fa()
     character(2),allocatable::fa
   end function
 end interface
 procedure(fa)::f5
 if (fa()/='xy')print *,'error-11'
 if (f5()/='xy')print *,'error-12'
end subroutine

subroutine t0
 interface  
   function fa()
     character(2),allocatable::fa
   end function
 end interface
 procedure(fa),pointer::f5
 f5=>fa
 call t1(f5)
end subroutine

call t0
print *,'pass'
end

   function fa() result(r)
     character(2),allocatable::r
     allocate(r)
     r='xy'
   end function

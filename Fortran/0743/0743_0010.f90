interface
   FUNCTION func(b) RESULT(fn_val)
   IMPLICIT NONE
   REAL :: fn_val
   REAL, DIMENSION(:), INTENT(IN) :: b
   end FUNCTION
end interface
   external x
   call sub(x)
   if (abs(func((/1.,2.,3./))-6.)>0.00001)write(6,*) "NG"
print *,'pass'
   end
   subroutine sub(func)
     interface 
       FUNCTION func(b) RESULT(fn_val)
        IMPLICIT NONE
        REAL :: fn_val
        REAL,  INTENT(IN) :: b
       end FUNCTION
     end interface
    if (abs(func(2.0)-2.0)>0.00001)write(6,*) "NG"
   end
   FUNCTION func(b) RESULT(fn_val)
   IMPLICIT NONE
   REAL :: fn_val
   REAL, DIMENSION(:), INTENT(IN) :: b
   fn_val=sum(b)
   end FUNCTION
   function x(y)
   x=y
   end

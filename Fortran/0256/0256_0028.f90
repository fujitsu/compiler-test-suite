INTEGER, POINTER :: p(:)
INTEGER, TARGET:: t(10) = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
p => t(1:10:2)
if(any(p/=[1,3,5,7,9])) print *,101
 if(is_contiguous(p).neqv..false.)print*,"102"
CALL fun(p)
print*,"pass"      
CONTAINS
  SUBROUTINE fun(arg)

    INTEGER,contiguous::arg(:)
     if(is_contiguous(arg).neqv..true.)print*,"103"
     if(any(arg/=[1,3,5,7,9])) print *,104
  END SUBROUTINE
end

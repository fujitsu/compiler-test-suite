INTEGER, POINTER :: p(:)
INTEGER, TARGET:: t(10) = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
p => t(1:10:1)
 if(is_contiguous(p).neqv..true.)print*,"102"
CALL fun(p)
print*,"pass"
if(p(1).ne.10)print*,"101"
if(p(2).ne.10)print*,"101"
if(p(9).ne.10)print*,"101"
CONTAINS
  SUBROUTINE fun(arg)

    INTEGER,contiguous::arg(:)
     if(is_contiguous(arg).neqv..true.)print*,"103"
     arg = 10
  END SUBROUTINE
end

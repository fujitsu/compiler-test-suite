INTEGER, POINTER :: p(:)
INTEGER, TARGET:: t(10) = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
p => t
 if(is_contiguous(p).neqv..true.)print*,"102"
CALL fun(p)
 if(p(1).ne.10)print*,"101"
print*,"pass"
CONTAINS
  SUBROUTINE fun(arg)

    INTEGER,contiguous::arg(:)
     if(is_contiguous(arg).neqv..true.)print*,"103"
     arg = 10
  END SUBROUTINE
end

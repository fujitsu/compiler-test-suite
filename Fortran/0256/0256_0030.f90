INTEGER, POINTER :: p(:)
INTEGER, TARGET:: t(10) = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
p => t(1:10:2)
CALL fun(p)
if(any(p/=[12,12,12,12,12])) print *,101
print*,"pass"      
CONTAINS
  SUBROUTINE fun(arg)

    INTEGER,contiguous::arg(:)
    arg = 12
  END SUBROUTINE
end

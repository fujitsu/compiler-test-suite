MODULE a_mod
 type C_P
  integer(8)::addr
 end type
PRIVATE
PUBLIC :: uf
  INTERFACE
    SUBROUTINE uf(obj)
      IMPORT :: C_P
      TYPE(C_P) :: obj
    END SUBROUTINE
  END INTERFACE
END MODULE

use a_mod,only:uf
print *,'pass'
end


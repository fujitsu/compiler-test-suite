MODULE mod_uddtio
  TYPE :: ina
     INTEGER :: iina
  end type ina
  TYPE :: type_a
     integer:: xxx
     CLASS(ina), ALLOCATABLE :: class_ina
   CONTAINS
     procedure, private :: write_formatted
     GENERIC :: WRITE(UNFORMATTED) => write_formatted
  END TYPE type_a
CONTAINS
  SUBROUTINE write_formatted (dtv,unit,iostat,iomsg)
    CLASS(type_a), INTENT(IN) :: dtv
    INTEGER, INTENT(IN) :: unit
    INTEGER, INTENT(OUT) :: iostat
    CHARACTER (LEN=*), INTENT(INOUT) :: iomsg
    SELECT TYPE(p => dtv%class_ina)
    TYPE IS (ina)
       WRITE(unit, IOSTAT=iostat) p%iina
    end SELECT
  end SUBROUTINE write_formatted
END MODULE mod_uddtio

PROGRAM MAIN
  use mod_uddtio
  TYPE(type_a) :: var_a
  ALLOCATE(ina::var_a%class_ina)
  var_a%class_ina%iina = 1
  WRITE(2  ) var_a 
call chk
print *,'pass'
END PROGRAM MAIN

subroutine chk
rewind 2
 read(2  ) k 
 if (k/=1) print *,101
end

MODULE mod_uddtio
  TYPE :: ina
     INTEGER :: iina
  end type ina
  TYPE :: type_a
     integer:: xxx
     CLASS(ina), ALLOCATABLE :: class_ina
   CONTAINS
     procedure, private :: write_formatted
     GENERIC :: WRITE(FORMATTED) => write_formatted
  END TYPE type_a
CONTAINS
  SUBROUTINE write_formatted (dtv,unit,iotype,vlist,iostat,iomsg)
    CLASS(type_a), INTENT(IN) :: dtv
    INTEGER, INTENT(IN) :: unit
    CHARACTER (LEN=*), INTENT(IN) :: iotype
    INTEGER, INTENT(IN) :: vlist(:)
    INTEGER, INTENT(OUT) :: iostat
    CHARACTER (LEN=*), INTENT(INOUT) :: iomsg
    SELECT TYPE(p => dtv%class_ina)
    TYPE IS (ina)
       WRITE(unit, FMT='(I1)', IOSTAT=iostat) p%iina
    end SELECT
  end SUBROUTINE write_formatted
END MODULE mod_uddtio

PROGRAM MAIN
  use mod_uddtio
  TYPE(type_a) :: var_a(2)
  ALLOCATE(ina::var_a(1)%class_ina)
  ALLOCATE(ina::var_a(2)%class_ina)
  var_a(1)%class_ina%iina = 1
  var_a(2)%class_ina%iina = 1
  WRITE(2, *) var_a 
call chk
print *,'pass'
END PROGRAM MAIN

subroutine chk
  TYPE :: type_a
     integer:: a
  end type
   type(type_a) ::var_a
  namelist /nam/ var_a
rewind 2
 read(2,*  ) k 
 if (k/=11) print *,101
end

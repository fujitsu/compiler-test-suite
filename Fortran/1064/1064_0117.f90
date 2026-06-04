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
       WRITE(unit, FMT='(I2)', IOSTAT=iostat) dtv%xxx
  end SUBROUTINE write_formatted
END MODULE mod_uddtio

PROGRAM MAIN
  use mod_uddtio
  TYPE(type_a) :: var_a(1)
  ALLOCATE(ina::var_a(1)%class_ina)
  var_a(1)%xxx=2
  var_a(1)%class_ina%iina = 1
  WRITE(2, *) var_a 
call chk
print *,'pass'
END PROGRAM MAIN

subroutine chk
  TYPE :: type_a
     integer:: a
  end type
   type(type_a) ::var_a
rewind 2
 read(2,*  ) k 
 if (k/=2) print *,101
end

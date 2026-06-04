MODULE mod_uddtio
  TYPE :: ina
     INTEGER :: iina
  end type ina
  TYPE :: type_a
     integer, ALLOCATABLE :: class_ina(:)
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
       WRITE(unit, FMT='(I2)', IOSTAT=iostat) dtv%class_ina
  end SUBROUTINE write_formatted
END MODULE mod_uddtio

  use mod_uddtio
  TYPE(type_a) :: var_a
  ALLOCATE(var_a%class_ina(2))
  var_a%class_ina = 1
  WRITE(1, '(DT)',iostat=k) var_a
if (k/=0) print *,101
call chk
print *,'pass'
END 
subroutine chk
rewind 1
read(1,*) k,kk
if (k/=1) print *,231
if (kk/=1) print *,231
end

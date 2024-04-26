MODULE mod_uddtio
  TYPE :: type_a
     INTEGER :: i1, i2
   CONTAINS
     procedure, private :: read_formatted
     GENERIC :: READ(FORMATTED) => read_formatted
  END TYPE type_a
CONTAINS
  SUBROUTINE read_formatted (dtv,unit,iotype,vlist,iostat,iomsg)
    CLASS(type_a), INTENT(INOUT) :: dtv
    INTEGER, INTENT(IN) :: unit
    CHARACTER (LEN=*), INTENT(IN) :: iotype
    INTEGER, INTENT(IN) :: vlist(:)
    INTEGER, INTENT(OUT) :: iostat
    CHARACTER (LEN=*), INTENT(INOUT) :: iomsg
    READ(unit, '(I10/I10)', IOSTAT=iostat) dtv%i1, dtv%i2
  END SUBROUTINE read_formatted
END MODULE mod_uddtio

PROGRAM MAIN
  use mod_uddtio
  INTEGER :: i1, i2
  TYPE(type_a) :: var_a

call set
var_a=type_a(0,0)
     READ(3, '(DT)') var_a
     if (var_a%i1/=1) print *,101
     if (var_a%i2/=0) print *,102

print *,'pass'
END PROGRAM MAIN
subroutine set
 write(3,'(i2)') 1
 write(3,'(i2)') 2
rewind 3
end

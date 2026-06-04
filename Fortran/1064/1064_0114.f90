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
  TYPE(type_a) :: var_a(5)

  do kk=1,10
   write(1,*) kk
  end do
  rewind 1
  DO i = 1, 5
     READ(1, '(DT)',iostat=ios) var_a(i)
     if (ios==0) print *,109
  END DO
print *,'pass'

END PROGRAM MAIN

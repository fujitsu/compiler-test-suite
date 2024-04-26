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
    READ(unit, '(I2,I2)', IOSTAT=iostat) dtv%i1, dtv%i2
  END SUBROUTINE read_formatted
END MODULE mod_uddtio

PROGRAM MAIN
  use mod_uddtio
  INTEGER :: i1, i2
  TYPE(type_a) :: var_a(5)

call set
  DO i = 1, 5
     READ(3, '(DT)') var_a(i)
     WRITE(1, '(I0,I0)') var_a(i)%i1, var_a(i)%i2
  END DO

print *,'pass'
END PROGRAM MAIN
subroutine set
do k=1,10
 write(3,*) k,k
end do
rewind 3
end

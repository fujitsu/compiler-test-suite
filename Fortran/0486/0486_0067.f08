MODULE mod_uddtio
  TYPE :: ina
     INTEGER :: iina
  end type ina
  TYPE :: type_a
     type(ina), ALLOCATABLE :: class_ina
   CONTAINS
     procedure, private :: write_formatted
     GENERIC :: WRITE(FORMATTED) => write_formatted
  END TYPE type_a
CONTAINS
  SUBROUTINE write_formatted (dtv,unit,iotype,list,iostat,iomsg)
    CLASS(type_a), INTENT(IN) :: dtv
    INTEGER, INTENT(IN) :: unit
    CHARACTER (LEN=*), INTENT(IN) :: iotype
    INTEGER, INTENT(IN) :: list(:)
    INTEGER, INTENT(OUT) :: iostat
    CHARACTER (LEN=*), INTENT(INOUT) :: iomsg
       WRITE(unit, FMT='(I2)', IOSTAT=iostat) dtv%class_ina%iina
  end SUBROUTINE write_formatted
END MODULE mod_uddtio

  use mod_uddtio
  TYPE(type_a) :: var_a
  ALLOCATE(ina::var_a%class_ina)
  var_a%class_ina%iina = 1
  WRITE(1, '(DT,i4,x,i4)',iostat=k) var_a,2,3
if (k/=0) print *,101
call chk
print *,'pass'
END 
subroutine chk
rewind 1
read(1,*) k,k2,k3
if (k/=1) print *,231
if (k2/=2) print *,232
if (k3/=3) print *,233
end

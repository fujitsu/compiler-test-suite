MODULE mod_uddtio
  TYPE :: inax
     INTEGER :: iinaxx
  END TYPE
  TYPE :: ina
     type(inax),pointer:: iina
   CONTAINS
     procedure, private :: write_formatted2
     GENERIC :: WRITE(FORMATTED) => write_formatted2
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
       WRITE(unit, FMT='(DT)', IOSTAT=iostat) dtv%class_ina
  end SUBROUTINE write_formatted
  SUBROUTINE write_formatted2 (dtv,unit,iotype,list,iostat,iomsg)
    CLASS(ina), INTENT(IN) :: dtv
    INTEGER, INTENT(IN) :: unit
    CHARACTER (LEN=*), INTENT(IN) :: iotype
    INTEGER, INTENT(IN) :: list(:)
    INTEGER, INTENT(OUT) :: iostat
    CHARACTER (LEN=*), INTENT(INOUT) :: iomsg
       WRITE(unit, FMT='(I2)', IOSTAT=iostat) dtv%iina%iinaxx
  end SUBROUTINE write_formatted2
END MODULE mod_uddtio

  use mod_uddtio
  TYPE(type_a) :: var_a
character(1000)::msg
  ALLOCATE(ina::var_a%class_ina)
  allocate(var_a%class_ina%iina)
  var_a%class_ina%iina%iinaxx = 1
  WRITE(1, '(DT)',iostat=k,iomsg=msg) var_a
if (k/=0) print *,101,k
call chk
print *,'pass'
END 
subroutine chk
rewind 1
read(1,*) k
if (k/=1) print *,231
end

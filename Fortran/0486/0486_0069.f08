MODULE mod_uddtio
  TYPE :: ina
     INTEGER :: iina=9
  end type ina
  TYPE :: type_a
     character(:),pointer :: w1
     type(ina), ALLOCATABLE :: class_ina
     character(:),pointer :: w2
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
       WRITE(unit, FMT='(a,x)' , IOSTAT=iostat) dtv%w1
       WRITE(unit, FMT='(i4)'  , IOSTAT=iostat) dtv%class_ina%iina
       WRITE(unit, FMT='(a,x)' , IOSTAT=iostat) dtv%w2
  end SUBROUTINE write_formatted
END MODULE mod_uddtio

  use mod_uddtio
  TYPE(type_a) :: var_a
  ALLOCATE(ina::var_a%class_ina)
  ALLOCATE(var_a%w1 , source='3')
  ALLOCATE(var_a%w2 , source='4')
  var_a%class_ina%iina = 1
  WRITE(1,FMT='(DT,I4,I4)',iostat=k) var_a,2,3
if (k/=0) print *,101
call chk
print *,'pass'
END 
subroutine chk
rewind 1
read(1,*) k,k2,k4,k5
if (k/=3) print *,231
if (k2/=14) print *,232
if (k4/=2) print *,234
if (k5/=3) print *,235
end

MODULE mod
  TYPE :: ina
     INTEGER :: iina
  end type ina
  TYPE :: type_a
     integer:: xxx
     CLASS(ina), ALLOCATABLE :: class_ina
   CONTAINS
     procedure :: write_formatted
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
    SELECT TYPE(p => dtv%class_ina)
    TYPE IS (ina)
       WRITE(unit, FMT='(I0.20)', IOSTAT=iostat) p%iina
    end SELECT
  end SUBROUTINE write_formatted
END 

  use mod
  TYPE(type_a) :: var_a
  ALLOCATE(ina::var_a%class_ina)
  var_a%class_ina%iina = 1
  WRITE(2, '(dt)') var_a 
call chk
print *,'pass'
END 

subroutine chk
  TYPE :: type_a
     integer:: a
  end type
rewind 2
 read(2,*  ) k 
 if (k/=1) print *,101
end

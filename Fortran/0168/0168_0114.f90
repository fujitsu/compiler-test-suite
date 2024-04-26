MODULE mod_uddtio
  TYPE :: ina
     INTEGER :: iina
  end type ina
  TYPE :: type_a
     integer:: xxx
     integer:: xx1
   CONTAINS
     procedure, private :: write_formatted
     GENERIC :: WRITE(FORMATTED) => write_formatted
  END TYPE type_a
CONTAINS
  SUBROUTINE write_formatted (dtv,unit,iotype,vlist,iostat,iomsg)
    class(type_a), INTENT(IN) :: dtv
    INTEGER, INTENT(IN) :: unit
    CHARACTER (LEN=*), INTENT(IN) :: iotype
    INTEGER, INTENT(IN) :: vlist(:)
    INTEGER, INTENT(OUT) :: iostat
    CHARACTER (LEN=*), INTENT(INOUT) :: iomsg
       WRITE(unit, FMT='(I0.20)', IOSTAT=iostat) dtv%xx1
  end SUBROUTINE write_formatted
END MODULE mod_uddtio

PROGRAM MAIN
  use mod_uddtio
  TYPE(type_a) :: var_a(2)
  var_a(2)%xx1 = 1
  var_a(2)%xxx = 2
  WRITE(2, *) var_a(2:2) 
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
 if (k/=1) print *,101
end

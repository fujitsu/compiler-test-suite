MODULE mod
  type base
   CONTAINS
     procedure, private :: write_formatted
     GENERIC :: WRITE(FORMATTED) => write_formatted
  end type
  TYPE,extends(base) :: type_a
     INTEGER :: iina
     CLASS(base  ), allocatable :: class_ina
  END TYPE type_a
CONTAINS
  SUBROUTINE write_formatted (dtv,unit,iotype,vlist,iostat,iomsg)
    CLASS(base  ), INTENT(IN) :: dtv
    INTEGER, INTENT(IN) :: unit
    CHARACTER (LEN=*), INTENT(IN) :: iotype
    INTEGER, INTENT(IN) :: vlist(:)
    INTEGER, INTENT(OUT) :: iostat
    CHARACTER (LEN=*), INTENT(INOUT) :: iomsg
    SELECT TYPE(dtv  )
    TYPE IS (type_a)
      SELECT TYPE(p => dtv%class_ina)
      TYPE IS (type_a)
         WRITE(unit, FMT='(I2)', IOSTAT=iostat) p%iina
      end SELECT
    end SELECT
  end SUBROUTINE write_formatted
END MODULE mod

  use mod
  TYPE(type_a) :: var_a
  namelist /nam/ var_a
  ALLOCATE(type_a::var_a%class_ina)
  select type( p=>var_a%class_ina )
   type is( type_a )
     p              %iina = 1
  end select
  WRITE(20, nam,iostat=k)
if (k/=0) print *,201
rewind 20
call chk
print *,'sngg377p : pass'
END
subroutine chk
integer var_a
  namelist /nam/ var_a
rewind 20
read(20,nam)
if (var_a/=1) print *,101
end

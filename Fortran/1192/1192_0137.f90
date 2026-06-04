MODULE mod
  type base
   CONTAINS
     procedure, private :: write_formatted
     GENERIC :: WRITE(FORMATTED) => write_formatted
  end type
  TYPE,extends(base) :: type_a
     INTEGER,allocatable :: iina
     CLASS(base  ), allocatable :: class_ina
  END TYPE type_a
  integer(8)::error
CONTAINS
  SUBROUTINE write_formatted (dtv,unit,iotype,vlist,iostat,iomsg)
    CLASS(base  ), INTENT(IN) :: dtv
    INTEGER, INTENT(IN) :: unit
    CHARACTER (LEN=*), INTENT(IN) :: iotype
    INTEGER, INTENT(IN) :: vlist(:)
    INTEGER, INTENT(OUT) :: iostat
    CHARACTER (LEN=*), INTENT(INOUT) :: iomsg
    CLASS(base  ),allocatable :: x
!
    allocate( x, source=dtv)
    k=0
    SELECT TYPE(x    )
    TYPE IS (type_a)
      if (x%iina/=1) print *,6011
      x%iina=11
      SELECT TYPE(p => x%class_ina)
      TYPE IS (type_a)
         if (p%iina/=1) print *,6021
         p%iina=12
         k=1
      end SELECT
    end SELECT
    if (k/=1) print *,7001
!
    SELECT TYPE(dtv  )
    TYPE IS (type_a)
      if (dtv%iina/=1) error=error+1
      SELECT TYPE(p => dtv%class_ina)
      TYPE IS (type_a)
         if (p%iina/=1) error=error+2
         WRITE(unit, FMT='(I2)', IOSTAT=iostat) p%iina
      end SELECT
    end SELECT
  end SUBROUTINE write_formatted
END MODULE mod

  use mod
  TYPE(type_a) :: var_a
  namelist /nam/ var_a
  allocate(var_a%iina,source = 1)
  ALLOCATE(type_a::var_a%class_ina)
  select type( p=>var_a%class_ina )
   type is( type_a )
  allocate(p    %iina,source = 1)
  end select
  WRITE(21, nam,iostat=k)
if (k/=0) print *,201
rewind 21
call chk
if (error/=0) print *,'error code:',error
print *,'sngg378p : pass'
END
subroutine chk
integer var_a
  namelist /nam/ var_a
rewind 21
read(21,nam)
if (var_a/=1) print *,101,var_a
end

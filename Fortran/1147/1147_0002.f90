MODULE TYPES
  TYPE T
     INTEGER :: K
   CONTAINS   
     PROCEDURE :: UDIO_WRITE_ARRAY
     GENERIC :: WRITE(unFORMATTED) => UDIO_WRITE_ARRAY
  END TYPE T
interface WRITE(unFORMATTED)
 procedure UDIO_WRITE_ARRAY
end interface
CONTAINS
  SUBROUTINE UDIO_WRITE_ARRAY (DTV, UNIT, IOSTAT, IOMSG)
    CLASS(T), INTENT(IN)        :: DTV
    INTEGER, INTENT(IN)         :: UNIT
    INTEGER, INTENT(OUT)        :: IOSTAT
    CHARACTER(*), INTENT(INOUT) :: IOMSG
    
    WRITE (UNIT, IOSTAT=IOSTAT, IOMSG=IOMSG) dtv%k+1

  END SUBROUTINE UDIO_write_ARRAY
END MODULE TYPES

module m2
  USE TYPES,only: T, WRITE(unFORMATTED)
private
  TYPE (T) :: V
public:: V,WRITE(unFORMATTED)
end
module m3
use m2
private
public::s1,s2
  interface
     module subroutine s2
     end subroutine
  end interface
contains
subroutine s1
  V%k =1 
  WRITE(1) v
end subroutine
end
submodule(m3)smod
contains
  module subroutine s2
  V%k =1 
  WRITE(1) v
end subroutine
end

use m3,only:s1,s2
call s1
call s2
call chk
print *,'sngg013o : pass'
END 
subroutine chk
integer a
rewind 1
read(1) a
if (a/=2) print *,101
read(1) a
if (a/=2) print *,1012
end


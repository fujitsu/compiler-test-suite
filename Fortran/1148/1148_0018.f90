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
use m2,only:WRITE(unFORMATTED),V
private::WRITE(unFORMATTED)
public::s1,sub
  interface
     module subroutine sub
     end subroutine sub
  end interface
contains
subroutine s1
  V%k =1 
  WRITE(1) v
end subroutine
end
submodule(m3)smod
contains
  module subroutine sub
  V%k =1 
  WRITE(1) v
  end
end

use m3,only:s1,sub
call s1
call sub
print *,'sngg054o : pass'
END 
subroutine chk
integer a
rewind 1
read(1) a
if (a/=2) print *,101
read(1) a
if (a/=2) print *,102
end


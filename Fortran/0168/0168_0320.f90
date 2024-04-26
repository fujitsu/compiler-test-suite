MODULE M
  TYPE T
      INTEGER::A
     CONTAINS 
        PROCEDURE::SUB1
        GENERIC::READ(FORMATTED)=>SUB1
END TYPE T
CHARACTER(14) :: CH
  INTEGER :: VV,kst=0
CONTAINS
SUBROUTINE SUB1 (DTV, UNIT, IOTYPE, V_LIST, IOSTAT, IOMSG)
    CLASS(T), INTENT(INOUT)            :: DTV
    INTEGER, INTENT(IN)             :: UNIT
    CHARACTER(LEN=*), INTENT(IN)    :: IOTYPE
    INTEGER, INTENT(IN)             :: V_LIST (:)
    INTEGER, INTENT(OUT)            :: IOSTAT
    CHARACTER(LEN=*), INTENT(INOUT) :: IOMSG
  CH=IOTYPE
      IF(SIZE(V_LIST)/=0) THEN
         VV=V_LIST(1)
      endif
        READ(UNIT,*,IOSTAT=IOSTAT,IOMSG=IOMSG) 
if (DTV%A/=14) kst= 103
END SUBROUTINE SUB1
END MODULE M

PROGRAM MAIN
USE M
TYPE(T)::R
namelist /nam/R
character(1000):: msg
integer::ios
call init
R%A=14
   READ (1,nam,IOSTAT=ios,iomsg=msg)
if (ios/=0) print *,102
if (kst/=0) print *,103
print *,'pass'
END 
subroutine init
namelist /nam/R
R=0
write(1,nam) 
rewind 1
end

MODULE M
  TYPE T
      INTEGER,pointer::A
     CONTAINS
        PROCEDURE::SUB
        PROCEDURE::SUB1
        procedure runform
        procedure wunform
        GENERIC::WRITE(FORMATTED)=>SUB
        GENERIC::READ(FORMATTED)=>SUB1
     generic :: read(unformatted) => runform
     generic :: write(unformatted) => wunform
END TYPE T
CHARACTER(14) :: CH
  INTEGER :: VV
CONTAINS
    subroutine wunform(dtv, unit, iostat, iomsg)
      class(t), intent(in) :: dtv
      integer, intent(in) :: unit
      integer, intent(out) :: iostat
      character(*), intent(inout) :: iomsg
      write(unit,iostat=iostat,iomsg=iomsg) dtv%a
    end subroutine
    subroutine runform(dtv, unit, iostat, iomsg)
      class(t), intent(inout) :: dtv
      integer, intent(in) :: unit
      integer, intent(out) :: iostat
      character(*), intent(inout) :: iomsg
     read(unit,iostat=iostat,iomsg=iomsg) dtv%a
      dtv%a=dtv%a+1
    end subroutine
SUBROUTINE SUB (DTV, UNIT, IOTYPE, V_LIST, IOSTAT,IOMSG)
    CLASS(T), INTENT(IN)            :: DTV
    INTEGER, INTENT(IN)            :: UNIT
    CHARACTER(LEN=*), INTENT(IN)    :: IOTYPE
    INTEGER, INTENT(IN)             :: V_LIST (:)
    INTEGER, INTENT(OUT)            :: IOSTAT
    CHARACTER(LEN=*), INTENT(INOUT) :: IOMSG
    VV=DTV%A
    IF(SIZE(V_LIST)/=0) THEN
        WRITE(UNIT,*,IOSTAT=IOSTAT,IOMSG=IOMSG) V_LIST(1),DTV%A+1,IOTYPE
      ELSE
        WRITE(UNIT,*,IOSTAT=IOSTAT,IOMSG=IOMSG) DTV%A+1
      END IF
    END SUBROUTINE SUB

SUBROUTINE SUB1 (DTV, UNIT, IOTYPE, V_LIST, IOSTAT, IOMSG)
    CLASS(T), INTENT(INOUT)            :: DTV
    INTEGER, INTENT(IN)             :: UNIT
    CHARACTER(LEN=*), INTENT(IN)    :: IOTYPE
    INTEGER, INTENT(IN)             :: V_LIST (:)
    INTEGER, INTENT(OUT)            :: IOSTAT
    CHARACTER(LEN=*), INTENT(INOUT) :: IOMSG
INTEGER,ALLOCATABLE ::ARR(:)
ALLOCATE(ARR,SOURCE=V_LIST)
  CH=IOTYPE
          IF(SIZE(ARR)/=0) THEN
         VV=ARR(1)
        READ(UNIT,*,IOSTAT=IOSTAT,IOMSG=IOMSG) DTV%A
      ELSE
        READ(UNIT,*,IOSTAT=IOSTAT,IOMSG=IOMSG) DTV%A
     END IF
     DTV%A=DTV%A+1
END SUBROUTINE SUB1

END MODULE M

subroutine s1
USE M
TYPE(T)::OBJW,OBJR
character(1000):: msg
namelist/nam/OBJW
integer::ios
allocate(OBJW%A,OBJR%A)
OBJW%A=4
rewind 1
ios=-1000
     WRITE(17,nam,IOSTAT=ios,iomsg=msg)
if (ios/=0) print *,101
ios=-1000
if(VV .ne. 4)print*,102
     WRITE(17,*,IOSTAT=ios,iomsg=msg)OBJW
if (ios/=0) print *,102
ios=-1000
     WRITE(17,'(dt)',IOSTAT=ios,iomsg=msg)  OBJW
if (ios/=0) print *,103
ios=-1000
     WRITE(17,'(dt"abc"(1,2))',IOSTAT=ios,iomsg=msg) OBJW
if (ios/=0) print *,104
ios=-1000
     WRITE(18,IOSTAT=ios,iomsg=msg)  OBJW
if (ios/=0) print *,105,ios,trim(msg)
ios=-1000
     WRITE(17,nam,IOSTAT=ios,iomsg=msg)
if (ios/=0) print *,106
end
subroutine s2
USE M
TYPE(T)::OBJW,OBJR
character(1000):: msg
namelist/nam/OBJW
integer::ios
allocate(OBJW%A,OBJR%A)
OBJW%A=4
rewind 17
rewind 18
ios=-1000
     READ(17,nam,IOSTAT=ios,iomsg=msg)
if (ios/=0) print *,201,ios,trim(msg)
if (objw%a/=6) print *,301,objw%a
ios=-1000
   READ (17,*,IOSTAT=ios,iomsg=msg)OBJR
if (ios/=0) print *,203,ios,trim(msg)
if (objr%a/=6) print *,302,objr%a
OBJR%A=0
ios=-1000
   READ (17,'(dt)',IOSTAT=ios,iomsg=msg)OBJR
if (ios/=0) print *,204,ios,trim(msg)
if (objr%a/=6) print *,303,objr%a
OBJR%A=0
ios=-1000
   READ (17,'(dt"abc"(3,4))',IOSTAT=ios,iomsg=msg)OBJR
if (ios/=0) print *,205,ios,trim(msg)
if (objr%a/=2) print *,304,objr%a
OBJR%A=0
ios=-1000
   READ (18,IOSTAT=ios,iomsg=msg)OBJR
if (ios/=0) print *,206,ios,trim(msg)
if (objr%a/=5) print *,305,objr%a
OBJW%A=0
ios=-1000
     READ(17,nam,IOSTAT=ios,iomsg=msg)
if (ios/=0) print *,201,ios,trim(msg)
if (objw%a/=6) print *,306,objw%a
end
call s1
call s2
print *,'pass'
END

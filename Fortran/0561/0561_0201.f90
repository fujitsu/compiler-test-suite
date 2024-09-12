MODULE m1
  TYPE T(k1)
    integer,kind:: k1
     INTEGER :: v(k1)
        INTEGER,ALLOCATABLE::A
     contains   
     procedure prc1
     procedure ttt1,SUB1,SUB2
     generic::write(formatted)=>prc1
     generic::write(formatted)=>ttt1
     generic::read(formatted)=>SUB1
     generic::read(formatted)=>SUB2
  END TYPE T
character(len=15)::CH
INTEGER::VV=1

CONTAINS
SUBROUTINE prc1(DTV, UNIT, IOTYPE, V_LIST, IOSTAT, IOMSG)
    CLASS(T(2)), INTENT(IN)     :: DTV
    INTEGER, INTENT(IN)         :: UNIT
    CHARACTER(*), INTENT(IN)    :: IOTYPE
    INTEGER, INTENT(IN)         :: V_LIST (:)
    INTEGER, INTENT(OUT)        :: IOSTAT
    CHARACTER(*), INTENT(INOUT) :: IOMSG
    
    IF(SIZE(V_LIST)/=0) THEN
        WRITE(UNIT,*,IOSTAT=IOSTAT,IOMSG=IOMSG) V_LIST(1),V_LIST(2),DTV%v+1,IOTYPE
      ELSE
        WRITE(UNIT,*,IOSTAT=IOSTAT,IOMSG=IOMSG) DTV%v+1,DTV%A+1,IOTYPE
      END IF
    
  END SUBROUTINE
SUBROUTINE ttt1(DTV, UNIT, IOTYPE, V_LIST, IOSTAT, IOMSG)
    CLASS(T(10)), INTENT(IN)     :: DTV
    INTEGER, INTENT(IN)         :: UNIT
    CHARACTER(*), INTENT(IN)    :: IOTYPE
    INTEGER, INTENT(IN)         :: V_LIST (:)
    INTEGER, INTENT(OUT)        :: IOSTAT
    CHARACTER(*), INTENT(INOUT) :: IOMSG
    IF(SIZE(V_LIST)/=0) THEN
        WRITE(UNIT,*,IOSTAT=IOSTAT,IOMSG=IOMSG) V_LIST(1),V_LIST(2),DTV%v+1,IOTYPE
      ELSE
        WRITE(UNIT,*,IOSTAT=IOSTAT,IOMSG=IOMSG) DTV%v+1,DTV%A+1,IOTYPE
      END IF
    
  END SUBROUTINE

SUBROUTINE SUB1 (DTV, UNIT, IOTYPE, V_LIST, IOSTAT, IOMSG)
    CLASS(T(2)), INTENT(INOUT)            :: DTV
    INTEGER, INTENT(IN)             :: UNIT
    CHARACTER(LEN=*), INTENT(IN)    :: IOTYPE
    INTEGER, INTENT(IN)             :: V_LIST (:)
    INTEGER, INTENT(OUT)            :: IOSTAT
    CHARACTER(LEN=*), INTENT(INOUT) :: IOMSG
CH=IOTYPE
          IF(SIZE(V_LIST)/=0) THEN
         VV=V_LIST(1)
        READ(UNIT,*,IOSTAT=IOSTAT,IOMSG=IOMSG) DTV%v,CH
      ELSE
        READ(UNIT,*,IOSTAT=IOSTAT,IOMSG=IOMSG) DTV%v,DTV%A,CH
     END IF
     DTV%v=DTV%v+1
    END SUBROUTINE 

SUBROUTINE SUB2 (DTV, UNIT, IOTYPE, V_LIST, IOSTAT, IOMSG)
    CLASS(T(10)), INTENT(INOUT)            :: DTV
    INTEGER, INTENT(IN)             :: UNIT
    CHARACTER(LEN=*), INTENT(IN)    :: IOTYPE
    INTEGER, INTENT(IN)             :: V_LIST (:)
    INTEGER, INTENT(OUT)            :: IOSTAT
    CHARACTER(LEN=*), INTENT(INOUT) :: IOMSG
CH=IOTYPE
          IF(SIZE(V_LIST)/=0) THEN
         VV=V_LIST(1)
        READ(UNIT,*,IOSTAT=IOSTAT,IOMSG=IOMSG) DTV%v,CH
      ELSE
        READ(UNIT,*,IOSTAT=IOSTAT,IOMSG=IOMSG) DTV%v,DTV%A,CH
     END IF
     DTV%v=DTV%v+1
END SUBROUTINE SUB2
END 

  USE m1
  TYPE(T(2))::e,c
  TYPE(T(10))::b,d
  allocate(e%A)
  allocate(c%A)
  allocate(b%A)
  allocate(d%A)
  e%v=500
  b%v=600
  e%A=3
  b%A=5
  open(34,file='fort.105',form='formatted')
  write(unit=34,*) e,b
  close(unit=34)
  open(34,file='fort.105',form='formatted')
  read(unit=34,*) c,d
  close(unit=34,status='delete')
if(any(c%v/= 502))print*,'101'
if(c%A/= 4)print*,'103'
if(any(d%v/= 602))print*,'102'
if(d%A/= 6)print*,'104'
print*,'pass'
END



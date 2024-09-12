MODULE m1
  TYPE T(k1,k2,k3)
    integer,kind:: k1
    integer,kind:: k2
    integer,kind:: k3
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
TYPE T2(k)
    integer,kind:: k
    TYPE(T(2,4,5))::cmp
    TYPE(T(10,8,4))::cmp1
    INTEGER::D(k)
END TYPE    

INTEGER::s=0 

CONTAINS
SUBROUTINE prc1(DTV, UNIT, IOTYPE, V_LIST, IOSTAT, IOMSG)
    CLASS(T(2,4,5)), INTENT(IN)     :: DTV
    INTEGER, INTENT(IN)         :: UNIT
    CHARACTER(*), INTENT(IN)    :: IOTYPE
    INTEGER, INTENT(IN)         :: V_LIST (:)
    INTEGER, INTENT(OUT)        :: IOSTAT
    CHARACTER(*), INTENT(INOUT) :: IOMSG
    s=1
    IF(SIZE(V_LIST)/=0) THEN
        WRITE(UNIT,*,IOSTAT=IOSTAT,IOMSG=IOMSG) V_LIST(1),V_LIST(2),DTV%v+1,IOTYPE
      ELSE
        WRITE(UNIT,*,IOSTAT=IOSTAT,IOMSG=IOMSG) DTV%v+1,DTV%A+DTV%k3,IOTYPE
      END IF
    
  END SUBROUTINE
SUBROUTINE ttt1(DTV, UNIT, IOTYPE, V_LIST, IOSTAT, IOMSG)
    CLASS(T(10,8,4)), INTENT(IN)     :: DTV
    INTEGER, INTENT(IN)         :: UNIT
    CHARACTER(*), INTENT(IN)    :: IOTYPE
    INTEGER, INTENT(IN)         :: V_LIST (:)
    INTEGER, INTENT(OUT)        :: IOSTAT
    CHARACTER(*), INTENT(INOUT) :: IOMSG
    IF(SIZE(V_LIST)/=0) THEN
        WRITE(UNIT,*,IOSTAT=IOSTAT,IOMSG=IOMSG) V_LIST(1),V_LIST(2),DTV%v+1,IOTYPE
      ELSE
        WRITE(UNIT,*,IOSTAT=IOSTAT,IOMSG=IOMSG) DTV%v+1,DTV%A+DTV%k2,IOTYPE
      END IF
    
  END SUBROUTINE

SUBROUTINE SUB1 (DTV, UNIT, IOTYPE, V_LIST, IOSTAT, IOMSG)
    CLASS(T(2,4,5)), INTENT(INOUT)            :: DTV
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
    CLASS(T(10,8,4)), INTENT(INOUT)            :: DTV
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
  TYPE(T2(2))::e,c
  allocate(e%cmp%A)
  allocate(c%cmp%A)
  allocate(e%cmp1%A)
  allocate(c%cmp1%A)
  e%cmp%v=500
  e%cmp1%v=600
  e%cmp%A=3
  e%cmp1%A=5
  open(34,file='fort.105',form='formatted')
  write(unit=34,*) e
  close(unit=34)
  open(34,file='fort.105',form='formatted')
  read(unit=34,*) c
  close(unit=34,status='delete')
if(any(c%cmp%v/= 502))print*,'101'
if(c%cmp%A/= 8)print*,'103'
if(any(c%cmp1%v/= 602))print*,'102'
if(c%cmp1%A/= 13)print*,'104'
print*,'pass'
END



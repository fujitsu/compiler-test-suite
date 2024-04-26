MODULE TYPES
  TYPE T
     INTEGER :: K(6)
  END TYPE T
CONTAINS
SUBROUTINE UDIO_READ_ARRAY (DTV, UNIT, IOTYPE, V_LIST, IOSTAT, IOMSG)
    CLASS(T), INTENT(INOUT)     :: DTV
    INTEGER, INTENT(IN)         :: UNIT
    CHARACTER(*), INTENT(IN)    :: IOTYPE
    INTEGER, INTENT(IN)         :: V_LIST (:)
    INTEGER, INTENT(OUT)        :: IOSTAT
    CHARACTER(*), INTENT(INOUT) :: IOMSG
IOSTAT=0
select type (DTV)
 typeis(T)
  write(1,*)'DTV=',DTV
end select
  write(1,*)'UNIT=',UNIT
  write(1,*)'IOTYPE=',IOTYPE
  write(1,*)'V_LIST=',V_LIST
  write(1,*)'IOSTAT=',IOSTAT
  write(1,*)'IOMSG=',trim(IOMSG)
  END SUBROUTINE UDIO_READ_ARRAY
end

PROGRAM MAIN
  USE TYPES
  TYPE (T) :: V
integer,allocatable::vlist(:)
integer::vlist_num,IOSTAT
character(:),allocatable::IOMSG
 V%K=[1,2,3,4,5,6]
 vlist_num=2
  allocate(vlist(vlist_num))
  vlist=[2,3]
 allocate(character(100):: IOMSG)
IOMSG='start'
  call UDIO_READ_ARRAY( &
     DTV= V ,           &
     UNIT=1,            &
     IOTYPE="DTfmt",    &
     V_LIST=vlist,      &
     IOSTAT=IOSTAT,     &
     IOMSG=IOMSG) 
 print *,'pass'
END PROGRAM MAIN

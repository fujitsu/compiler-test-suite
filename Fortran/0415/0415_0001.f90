MODULE p
  TYPE node
     INTEGER :: value = 0
     TYPE (NODE), POINTER :: next_node => NULL ( )
   CONTAINS
     PROCEDURE :: pwf
    GENERIC :: WRITE(FORMATTED) => pwf
   END TYPE node
  TYPE noder
     INTEGER :: value = 0
     TYPE (NODER), POINTER :: next_node => NULL ( )
   CONTAINS
     PROCEDURE :: prf
    GENERIC :: READ(FORMATTED) => prf
   END TYPE noder
CONTAINS
   RECURSIVE SUBROUTINE pwf (dtv,unit,iotype,vlist,iostat,iomsg)
     CLASS(node), INTENT(IN) :: dtv
     INTEGER, INTENT(IN) :: unit
     CHARACTER (LEN=*), INTENT(IN) :: iotype
     INTEGER, INTENT(IN) :: vlist(:)
     INTEGER, INTENT(OUT) :: iostat
     CHARACTER (LEN=*), INTENT(INOUT) :: iomsg
     WRITE(unit,'(i9)', IOSTAT = iostat) dtv%value
     IF(iostat/=0) RETURN
     IF(ASSOCIATED(dtv%next_node)) &
&    WRITE(unit,'(dt)', IOSTAT=iostat) dtv%next_node
   END SUBROUTINE pwf
   RECURSIVE SUBROUTINE prf (dtv,unit,iotype,vlist,iostat,iomsg)
     CLASS(noder), INTENT(INOUT) :: dtv
     INTEGER, INTENT(IN) :: unit
     CHARACTER (LEN=*), INTENT(IN) :: iotype
     INTEGER, INTENT(IN) :: vlist(:)
     INTEGER, INTENT(OUT) :: iostat
     CHARACTER (LEN=*), INTENT(INOUT) :: iomsg
     READ(unit,'(i9)', IOSTAT = iostat) dtv%value
     IF(iostat/=0) RETURN
     IF(ASSOCIATED(dtv%next_node)) &
&    read(unit,'(dt)', IOSTAT=iostat) dtv%next_node
   END SUBROUTINE prf
END MODULE p

PROGRAM TEST
USE p
TYPE (NODE), TARGET :: HEAD
TYPE (NODE), POINTER :: CURRENT, TEMP
TYPE (NODER), TARGET :: HEADR
TYPE (NODER), POINTER :: CURRENTR, TEMPR
INTEGER :: IOEM, K, ios,s
CURRENT => HEAD 
DO K=1,10
ALLOCATE (TEMP)
TEMP % VALUE = K 
CURRENT % NEXT_NODE => TEMP
CURRENT => TEMP 
END DO
write(16,fmt='(dt)',iostat=ios)CURRENT
write(11,*)ios
CURRENTR => HEADR
rewind(16)
DO K=1,10
ALLOCATE (TEMPR)
TEMPR % VALUE = -1 
CURRENTR % NEXT_NODE => TEMPR
CURRENTR => TEMPR 
END DO
CURRENTR => HEADR
read(16,fmt='(dt)',iostat=ios,size=s,advance='no')currentr
write(11,*)ios,s
call chk
print *,'pass'
END PROGRAM TEST
subroutine chk
rewind 11
read(11,*) n1
if (n1/=0) print *,101,n1
read(11,*) n1,n2
if (n1/=-2) print *,102,n1
if (n2/= 9) print *,103,n2
end

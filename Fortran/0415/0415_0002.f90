MODULE p
  TYPE node
     INTEGER :: value = 0
     TYPE (NODE), POINTER :: next_node => NULL ( )
   CONTAINS
     PROCEDURE :: pwf
    GENERIC :: WRITE(FORMATTED) => pwf
   END TYPE node
CONTAINS
   RECURSIVE SUBROUTINE pwf (dtv,unit,iotype,vlist,iostat,iomsg)
     CLASS(node), INTENT(IN) :: dtv
     INTEGER, INTENT(IN) :: unit
     CHARACTER (LEN=*), INTENT(IN) :: iotype
     INTEGER, INTENT(IN) :: vlist(:)
     INTEGER, INTENT(OUT) :: iostat
     CHARACTER (LEN=*), INTENT(INOUT) :: iomsg
     WRITE(unit,'(i9 /)', IOSTAT = iostat) dtv%value
     IF(iostat/=0) RETURN
     IF(ASSOCIATED(dtv%next_node)) &
&    WRITE(unit,'(dt)', IOSTAT=iostat) dtv%next_node
   END SUBROUTINE pwf
END MODULE p

PROGRAM TEST
USE p
TYPE (NODE), TARGET :: HEAD
TYPE (NODE), POINTER :: CURRENT, TEMP
INTEGER :: IOEM, K
CURRENT => HEAD 
DO K=1,10
ALLOCATE (TEMP)
TEMP % VALUE = K 
CURRENT % NEXT_NODE => TEMP
CURRENT => TEMP 
END DO
CURRENT => HEAD
write(1,fmt='(dt)')CURRENT
call chk
print *,'pass'
END PROGRAM TEST
subroutine chk
rewind 1
do k=0,10
  read(1,*) n
  if (k/=n) print *,200,k,n
end do
end

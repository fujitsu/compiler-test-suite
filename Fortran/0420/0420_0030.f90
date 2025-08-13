MODULE TYPES
  TYPE T
     INTEGER,allocatable :: K(:)
   CONTAINS
     PROCEDURE :: UDIO_READ_ARRAY
     GENERIC :: READ(UNFORMATTED) => UDIO_READ_ARRAY
  END TYPE T
  integer::k=1
   integer::n11(2),n12(2),n21(2),n22(2)

CONTAINS
SUBROUTINE UDIO_READ_ARRAY (DTV, UNIT, IOSTAT, IOMSG)
    CLASS(T), INTENT(INOUT)     :: DTV
    INTEGER, INTENT(IN)         :: UNIT
    INTEGER, INTENT(OUT)        :: IOSTAT
    CHARACTER(*), INTENT(INOUT) :: IOMSG

    READ (UNIT,iomsg=IOMSG,iostat=IOSTAT) dtv%k
  if (mod(k,2)==1) then
    n11=dtv%k
else
    n12=dtv%k
endif
k=k+1
  END SUBROUTINE UDIO_READ_ARRAY
subroutine chk
 integer A(4)
 rewind 10
 read(10) A
 if (any(A/=[300,300,500,500])) print *,201
end subroutine
subroutine put(iu)
write(iu)300,300,500,500
rewind iu
end subroutine
END MODULE TYPES

subroutine s1
  USE TYPES
  integer::ios=-1
  character(4)::iomsg='Okay'
  TYPE(T),allocatable::B(:)
 open(10,access='stream',form='unformatted')
call put(10)
  allocate( B(2) )
  allocate( B(1)%K(2))
  allocate( B(2)%K(2))
  read (10,pos=1,IOSTAT=ios,IOMSG=iomsg) B(:)
if (any(n11/=300)) print *,10001
if (any(n12/=500)) print *,10002
if (ios/=0) print *,10003
if (iomsg/='Okay') print *,10004
  if (any(B(1)%k/=300) ) print *,6001
  if (any(B(2)%k/=500) ) print *,6002
end
call s1
print  *,'pass'
END

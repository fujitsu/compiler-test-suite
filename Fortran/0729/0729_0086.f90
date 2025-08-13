PROGRAM TEST
IMPLICIT NONE
INTEGER :: I, J,k,kk
CHARACTER*20 cc
do k=-10,10
do kk=-10,10
write(121,*) k,kk
end do
end do
rewind 121
DO
   READ(121,*,end=1) I,J
   IF(I == J) THEN
      write(122,*) I, ' = ', J
   ELSE IF(I /= J) THEN
      write(123,*) I, ' /= ', J
   END IF
END DO
1continue
rewind 122
rewind 123
do k=1,22
read(122,'(a)',end=11)cc
end do
11 if (k/=22)write(6,*) "NG"
print *,'pass'
END

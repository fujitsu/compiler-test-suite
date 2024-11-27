PROGRAM TEST
IMPLICIT NONE
INTEGER :: I, J,k,kk
CHARACTER*20 cc
do k=-10,10
do kk=-10,10
write(1,*) k,kk
end do
end do
rewind 1
DO
   READ(1,*,end=1) I,J
   IF(I == J) THEN
      write(11,*) I, ' = ', J
   ELSE IF(I /= J) THEN
      write(12,*) I, ' /= ', J
   END IF
END DO
1continue
rewind 11
rewind 12
do k=1,22
read(11,'(a)',end=11)cc
end do
11 if (k/=22)write(6,*) "NG"
print *,'pass'
END

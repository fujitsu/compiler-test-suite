subroutine s1
COMMON T
REAL,DIMENSION(1000,50)::A,B,C,D
t=1.0
a=1
b=1
d=1
!$omp parallel private(t)
t=0
 DO J=1,50
 DO I=1,1000
 T=A(I,J)+B(I,J)
 C(I,J)=T+D(I,J)
 ENDDO
 ENDDO
if (abs(sum(c)-150000.)>0.1) print *,201
!$omp end parallel
if (t/=1) print *,101
end
call omp_set_num_threads(1)
CALL s1
print *,'pass'
END

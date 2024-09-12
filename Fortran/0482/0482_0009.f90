subroutine sub2()
integer :: A(10),B(10),C(10)
B=1
C=1
N=10
!$OMP do SIMD
DO I=1, N
A(I)=B(I)+C(I)
end DO
!$OMP SIMD
DO I=1, N
A(I)=B(I)+C(I)
end DO
if (A(1).ne.2) print *,'NG'
end

call sub2()
call sub1()
print *,'pass'
end

subroutine sub1()
integer :: A(10),B(10),C(10)
logical :: M(10)
M=.false.
A=0
A=A
B=0
C=0
N=10
DO I=1, N
IF (M(I)) THEN
A(I)=B(I)+C(I)
END IF
END DO
end

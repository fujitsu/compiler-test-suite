integer,parameter::double = kind(0.0)

REAL, DIMENSION(150) :: A, RECIPROCAL_A
REAL(DOUBLE), DIMENSION(10,20,30) :: B, SQRT_B
a=2.0;a(4)=0;reciprocal_a(4)=0
WHERE( A /= 0.0 ) RECIPROCAL_A = 1.0 / A
if(any(abs((/reciprocal_a(1),reciprocal_a(4)/)-(/0.5,0./))>0.0001))write(6,*) "NG"
b=4.0;b(5,5,5)=-5
WHERE( B .GE. 0.0 )
   SQRT_B = SQRT(B)
ELSEWHERE
   SQRT_B = 0.0
END WHERE
if(any(abs((/sqrt_b(10,20,30),sqrt_b(5,5,5)/)-(/2,0/))>0.0001))write(6,*) "NG"
print *,'pass'
end


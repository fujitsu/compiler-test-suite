subroutine sub01(i5,i10,n1,n2,n3,n4,k1,k2,pop1,pop,y,ny,L,M,n5,poj1)
real(8):: POP1(i5),POP(i10,i5),Y(i10),Poj1(6:6,5)
Poj1(NY*(L-1)+M,1:N5)=POP1(1:N1)+&
 MATMUL(TRANSPOSE(POP(1:N2,1:N3)),Y(K1+1:K2+N4))&
 +MATMUL(TRANSPOSE(POP(1:N2,1:N3)),Y(K1+1:K2+N4))
end
subroutine sub02(i5,i10,n1,n2,n3,n4,k1,k2,pop1,pop,y,ny,L,M,n5,poj1)
real(8):: POP1(i5),POP(i10,i5),Y(i10),Poj1(6:6,5)
Poj1(NY*(L-1)+M,1:N5)=POP1(1:N1)+&
 MATMUL(TRANSPOSE(POP(1:N2,1:N3)),Y(K1+1:K2+N4))&
 -MATMUL(TRANSPOSE(POP(1:N2,1:N3)),Y(K1+1:K2+N4))
end
subroutine sub03(i5,i10,n1,n2,n3,n4,k1,k2,pop1,pop,y,ny,L,M,n5,poj1)
real(8):: POP1(i5),POP(i10,i5),Y(i10),Poj1(6:6,5),r
r=2
Poj1(NY*(L-1)+M,1:N5)=POP1(1:N1)+&
 MATMUL(TRANSPOSE(POP(1:N2,1:N3)),Y(K1+1:K2+N4))&
 +MATMUL(TRANSPOSE(POP(1:N2,1:N3)),Y(K1+1:K2+N4))*r
end
subroutine sub04(i5,i10,n1,n2,n3,n4,k1,k2,pop1,pop,y,ny,L,M,n5,poj1)
real(8):: POP1(i5),POP(i10,i5),Y(i10),Poj1(6:6,5),r
r=2
Poj1(NY*(L-1)+M,1:N5)=POP1(1:N1)+&
 MATMUL(TRANSPOSE(POP(1:N2,1:N3)),Y(K1+1:K2+N4))&
 -MATMUL(TRANSPOSE(POP(1:N2,1:N3)),Y(K1+1:K2+N4))*r
end
subroutine sub05(i5,i10,n1,n2,n3,n4,k1,k2,pop1,pop,y,ny,L,M,n5,poj1)
real(8):: POP1(i5),POP(i10,i5),Y(i10),Poj1(6:6,5),r
r=2
Poj1(NY*(L-1)+M,1:N5)=POP1(1:N1)+&
 r*MATMUL(TRANSPOSE(POP(1:N2,1:N3)),Y(K1+1:K2+N4))&
 +MATMUL(TRANSPOSE(POP(1:N2,1:N3)),Y(K1+1:K2+N4))*r
end
subroutine sub06(i5,i10,n1,n2,n3,n4,k1,k2,pop1,pop,y,ny,L,M,n5,poj1)
real(8):: POP1(i5),POP(i10,i5),Y(i10),Poj1(6:6,5),r
r=2
Poj1(NY*(L-1)+M,1:N5)=POP1(1:N1)+&
 r*MATMUL(TRANSPOSE(POP(1:N2,1:N3)),Y(K1+1:K2+N4))&
 -MATMUL(TRANSPOSE(POP(1:N2,1:N3)),Y(K1+1:K2+N4))*r
end
subroutine sub07(i5,i10,n1,n2,n3,n4,k1,k2,pop1,pop,y,ny,L,M,n5,poj1)
real(8):: POP1(i5),POP(i10,i5),Y(i10),Poj1(6:6,5),r
r=2
Poj1(NY*(L-1)+M,1:N5)=POP1(1:N1)-&
 r*MATMUL(TRANSPOSE(POP(1:N2,1:N3)),Y(K1+1:K2+N4))&
 +MATMUL(TRANSPOSE(POP(1:N2,1:N3)),Y(K1+1:K2+N4))*r
end
subroutine sub08(i5,i10,n1,n2,n3,n4,k1,k2,pop1,pop,y,ny,L,M,n5,poj1)
real(8):: POP1(i5),POP(i10,i5),Y(i10),Poj1(6:6,5),r
r=2
Poj1(NY*(L-1)+M,1:N5)=POP1(1:N1)-&
 r*MATMUL(TRANSPOSE(POP(1:N2,1:N3)),Y(K1+1:K2+N4))&
 -MATMUL(TRANSPOSE(POP(1:N2,1:N3)),Y(K1+1:K2+N4))*r
end
real(8):: POP1(5),POP(10,5),Y(10),Poj1(6:6,5)
i5=5
i10=10
n1=5
n2=10
n3=5
k1=0
k2=0
n4=10
ny=1
L=3
M=4
n5=5
pop1=reshape((/(i,i=11,15)/),(/5/))
pop=reshape((/(i,i=1,10*5)/),(/10,5/))
y=reshape((/(i,i=1,10)/),(/10/))
call sub01(i5,i10,n1,n2,n3,n4,k1,k2,pop1,pop,y,ny,L,M,n5,poj1)
if (any(abs(poj1(6,:)-(/781,1882,2983,4084,5185/))>0.01))print *,'error-11'
call sub02(i5,i10,n1,n2,n3,n4,k1,k2,pop1,pop,y,ny,L,M,n5,poj1)
if (any(abs(poj1(6,:)-(/11,12,13,14,15/))>0.01))print *,'error-12'
call sub03(i5,i10,n1,n2,n3,n4,k1,k2,pop1,pop,y,ny,L,M,n5,poj1)
if (any(abs(poj1(6,:)-(/1166,2817,4468,6119,7770/))>0.01))print *,'error-13'
call sub04(i5,i10,n1,n2,n3,n4,k1,k2,pop1,pop,y,ny,L,M,n5,poj1)
if (any(abs(poj1(6,:)-(/-374,-923,-1472,-2021,-2570/))>0.01))print *,'error-14'
call sub05(i5,i10,n1,n2,n3,n4,k1,k2,pop1,pop,y,ny,L,M,n5,poj1)
if (any(abs(poj1(6,:)-(/1551,3752,5953,8154,10355/))>0.01))print *,'error-15'
call sub06(i5,i10,n1,n2,n3,n4,k1,k2,pop1,pop,y,ny,L,M,n5,poj1)
if (any(abs(poj1(6,:)-(/11,12,13,14,15/))>0.01))print *,'error-16'
call sub07(i5,i10,n1,n2,n3,n4,k1,k2,pop1,pop,y,ny,L,M,n5,poj1)
if (any(abs(poj1(6,:)-(/11,12,13,14,15/))>0.01))print *,'error-17'
call sub08(i5,i10,n1,n2,n3,n4,k1,k2,pop1,pop,y,ny,L,M,n5,poj1)
if (any(abs(poj1(6,:)-(/-1529,-3728,-5927,-8126,-10325/))>0.01))print *,'error-18'
print *,'pass'
end

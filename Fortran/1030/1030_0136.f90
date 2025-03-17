subroutine sub01(DX,i5,i10,n1,n2,n,k,EnsTim,Xp,r)
real(8):: EnsTim(i5,i10),DX(i5),Xp(i10),r
DX(K+1:K+N)= DX(K+1:K+N)-MATMUL(Xp(1:N2),transpose(EnsTim(1:N1,1:N2)))&
    +MATMUL(Xp(1:N2),transpose(EnsTim(1:N1,1:N2)))
end
subroutine sub02(DX,i5,i10,n1,n2,n,k,EnsTim,Xp,r)
real(8):: EnsTim(i5,i10),DX(i5),Xp(i10),r
DX(K+1:K+N)= DX(K+1:K+N)-MATMUL(Xp(1:N2),transpose(EnsTim(1:N1,1:N2)))&
    +r*MATMUL(Xp(1:N2),transpose(EnsTim(1:N1,1:N2)))
end
subroutine sub03(DX,i5,i10,n1,n2,n,k,EnsTim,Xp,r)
real(8):: EnsTim(i5,i10),DX(i5),Xp(i10),r
DX(K+1:K+N)= DX(K+1:K+N)-r*MATMUL(Xp(1:N2),transpose(EnsTim(1:N1,1:N2)))&
    +r*MATMUL(Xp(1:N2),transpose(EnsTim(1:N1,1:N2)))
end
subroutine sub04(DX,i5,i10,n1,n2,n,k,EnsTim,Xp,r)
real(8):: EnsTim(i5,i10),DX(i5),Xp(i10),r
DX(K+1:K+N)= 3.0_8*DX(K+1:K+N)-r*MATMUL(Xp(1:N2),transpose(EnsTim(1:N1,1:N2)))&
    +r*MATMUL(Xp(1:N2),transpose(EnsTim(1:N1,1:N2)))
end
subroutine sub05(DX,i5,i10,n1,n2,n,k,EnsTim,Xp,r)
real(8):: EnsTim(i5,i10),DX(i5),Xp(i10),r
DX(K+1:K+N)= r*DX(K+1:K+N)-MATMUL(Xp(1:N2),transpose(EnsTim(1:N1,1:N2)))&
    +r*MATMUL(Xp(1:N2),transpose(EnsTim(1:N1,1:N2)))&
    +MATMUL(Xp(1:N2),transpose(EnsTim(1:N1,1:N2)))
end
subroutine sub06(DX,i5,i10,n1,n2,n,k,EnsTim,Xp,r)
real(8):: EnsTim(i5,i10),DX(i5),Xp(i10),r
DX(K+1:K+N)= DX(K+1:K+N)-MATMUL(Xp(1:N2),transpose(EnsTim(1:N1,1:N2)))&
    +r*MATMUL(Xp(1:N2),transpose(EnsTim(1:N1,1:N2)))&
    +MATMUL(Xp(1:N2),transpose(EnsTim(1:N1,1:N2)))
end
subroutine sub07(DX,i5,i10,n1,n2,n,k,EnsTim,Xp,r)
real(8):: EnsTim(i5,i10),DX(i5),Xp(i10),r
DX(K+1:K+N)= DX(K+1:K+N)-r*MATMUL(Xp(1:N2),transpose(EnsTim(1:N1,1:N2)))&
    +MATMUL(Xp(1:N2),transpose(EnsTim(1:N1,1:N2)))&
    +r*MATMUL(Xp(1:N2),transpose(EnsTim(1:N1,1:N2)))
end
subroutine sub08(DX,i5,i10,n1,n2,n,k,EnsTim,Xp,r)
real(8):: EnsTim(i5,i10),DX(i5),Xp(i10),r
DX(K+1:K+N)= 3.0_8*DX(K+1:K+N)-r*MATMUL(Xp(1:N2),transpose(EnsTim(1:N1,1:N2)))&
    +r*MATMUL(Xp(1:N2),transpose(EnsTim(1:N1,1:N2)))&
    -r*MATMUL(Xp(1:N2),transpose(EnsTim(1:N1,1:N2)))
end
subroutine sub09(DX,i5,i10,n1,n2,n,k,EnsTim,Xp,r)
real(8):: EnsTim(i5,i10),DX(i5),Xp(i10),r
DX(K+1:K+N)= DX(K+1:K+N)-MATMUL(Xp(1:N2),transpose(EnsTim(1:N1,1:N2)))&
    +MATMUL(Xp(1:N2),transpose(EnsTim(1:N1,1:N2)))&
    +MATMUL(Xp(1:N2),transpose(EnsTim(1:N1,1:N2)))*r&
    +MATMUL(Xp(1:N2),transpose(EnsTim(1:N1,1:N2)))*r
end
subroutine sub10(DX,i5,i10,n1,n2,n,k,EnsTim,Xp,r)
real(8):: EnsTim(i5,i10),DX(i5),Xp(i10),r
DX(K+1:K+N)= DX(K+1:K+N)-MATMUL(Xp(1:N2),transpose(EnsTim(1:N1,1:N2)))&
    +MATMUL(Xp(1:N2),transpose(EnsTim(1:N1,1:N2)))*(-r)&
    +MATMUL(Xp(1:N2),transpose(EnsTim(1:N1,1:N2)))*r&
    +r*MATMUL(Xp(1:N2),transpose(EnsTim(1:N1,1:N2)))
end
subroutine sub11(DX,i5,i10,n1,n2,n,k,EnsTim,Xp,r)
real(8):: EnsTim(i5,i10),DX(i5),Xp(i10),r
DX(K+1:K+N)= r*DX(K+1:K+N)-r*MATMUL(Xp(1:N2),transpose(EnsTim(1:N1,1:N2)))&
    +r*MATMUL(Xp(1:N2),transpose(EnsTim(1:N1,1:N2)))&
    +MATMUL(Xp(1:N2),transpose(EnsTim(1:N1,1:N2)))*r&
    +r*MATMUL(Xp(1:N2),transpose(EnsTim(1:N1,1:N2)))&
    +MATMUL(Xp(1:N2),transpose(EnsTim(1:N1,1:N2)))*r
end
subroutine sub12(DX,i5,i10,n1,n2,n,k,EnsTim,Xp,r)
real(8):: EnsTim(i5,i10),DX(i5),Xp(i10),r
DX(K+1:K+N)= 3.0_8*DX(K+1:K+N)-r*MATMUL(Xp(1:N2),transpose(EnsTim(1:N1,1:N2)))&
    +r*MATMUL(Xp(1:N2),transpose(EnsTim(1:N1,1:N2)))&
    +r*MATMUL(Xp(1:N2),transpose(EnsTim(1:N1,1:N2)))&
    +r*MATMUL(Xp(1:N2),transpose(EnsTim(1:N1,1:N2)))
end
subroutine sub13(DX,i5,i10,n1,n2,n,k,EnsTim,Xp,r)
real(8):: EnsTim(i5,i10),DX(i5),Xp(i10),r
DX(K+1:K+N)= r*DX(K+1:K+N)-r*MATMUL(Xp(1:N2),transpose(EnsTim(1:N1,1:N2)))&
    +r*MATMUL(Xp(1:N2),transpose(EnsTim(1:N1,1:N2)))&
    +MATMUL((EnsTim(1:N1,1:N2)),Xp(1:N2))*r&
    +r*MATMUL(Xp(1:N2),transpose(EnsTim(1:N1,1:N2)))&
    +MATMUL(EnsTim(1:N1,1:N2),Xp(1:N2))*r&
    +MATMUL(Xp(1:N2),transpose(EnsTim(1:N1,1:N2)))*r
end
subroutine sub14(DX,i5,i10,n1,n2,n,k,EnsTim,Xp,r)
real(8):: EnsTim(i5,i10),DX(i5),Xp(i10),r
DX(K+1:K+N)= r*DX(K+1:K+N)-r*MATMUL(Xp(1:N2),transpose(EnsTim(1:N1,1:N2)))&
    -r*MATMUL(Xp(1:N2),transpose(EnsTim(1:N1,1:N2)))&
    -MATMUL((EnsTim(1:N1,1:N2)),Xp(1:N2))*r&
    -r*MATMUL(Xp(1:N2),transpose(EnsTim(1:N1,1:N2)))&
    -MATMUL(EnsTim(1:N1,1:N2),Xp(1:N2))*r&
    -MATMUL(Xp(1:N2),transpose(EnsTim(1:N1,1:N2)))*r
end
subroutine sub15(DX,i5,i10,n1,n2,n,k,EnsTim,Xp,r)
real(8):: EnsTim(i5,i10),DX(i5),Xp(i10),r
DX(K+1:K+N)= 3.0_8*DX(K+1:K+N)-r*MATMUL(Xp(1:N2),transpose(EnsTim(1:N1,1:N2)))&
    +r*MATMUL(Xp(1:N2),transpose(EnsTim(1:N1,1:N2)))&
    -MATMUL(Xp(1:N2),transpose(EnsTim(1:N1,1:N2)))&
    +r*MATMUL(Xp(1:N2),transpose(EnsTim(1:N1,1:N2)))
end
subroutine sub16(DX,i5,i10,n1,n2,n,k,EnsTim,Xp,r)
real(8):: EnsTim(i5,i10),DX(i5),Xp(i10),r
DX(K+1:K+N)= 3.0_8*DX(K+1:K+N)-r*MATMUL(Xp(1:N2),transpose(EnsTim(1:N1,1:N2)))&
    +r*MATMUL(Xp(1:N2),transpose(EnsTim(1:N1,1:N2)))&
    +MATMUL(Xp(1:N2),transpose(EnsTim(1:N1,1:N2)))&
    -MATMUL(Xp(1:N2),transpose(EnsTim(1:N1,1:N2)))
end
real(8):: EnsTim(5,10),DX(5),Xp(10),r
r=2.0
i5=5
i10=10
n1=5
n2=10
n=5
k=0
EnsTim=reshape((/(i,i=1,10*5)/),(/5,10/))
Xp=reshape((/(i,i=1,10)/),(/10/))
DX=reshape((/(i,i=21,25)/),(/5/))
call sub01(DX,i5,i10,n1,n2,n,k,EnsTim,Xp,r)
if (any(abs(DX-(/21,22,23,24,25/))>0.01))print *,'error-01'
call sub02(DX,i5,i10,n1,n2,n,k,EnsTim,Xp,r)
if (any(abs(DX-(/1726,1782,1838,1894,1950/))>0.01))print *,'error-02'
call sub03(DX,i5,i10,n1,n2,n,k,EnsTim,Xp,r)
if (any(abs(DX-(/1726,1782,1838,1894,1950/))>0.01))print *,'error-03'
call sub04(DX,i5,i10,n1,n2,n,k,EnsTim,Xp,r)
if (any(abs(DX-(/5178,5346,5514,5682,5850/))>0.01))print *,'error-04'
call sub05(DX,i5,i10,n1,n2,n,k,EnsTim,Xp,r)
if (any(abs(DX-(/13766,14212,14658,15104,15550/))>0.01))print *,'error-05'
call sub06(DX,i5,i10,n1,n2,n,k,EnsTim,Xp,r)
if (any(abs(DX-(/17176,17732,18288,18844,19400/))>0.01))print *,'error-06'
call sub07(DX,i5,i10,n1,n2,n,k,EnsTim,Xp,r)
if (any(abs(DX-(/18881,19492,20103,20714,21325/))>0.01))print *,'error-07'
call sub08(DX,i5,i10,n1,n2,n,k,EnsTim,Xp,r)
if (any(abs(DX-(/53233,54956,56679,58402,60125/))>0.01))print *,'error-08'
call sub09(DX,i5,i10,n1,n2,n,k,EnsTim,Xp,r)
if (any(abs(DX-(/60053,61996,63939,65882,67825/))>0.01))print *,'error-09'
call sub10(DX,i5,i10,n1,n2,n,k,EnsTim,Xp,r)
if (any(abs(DX-(/61758,63756,65754,67752,69750/))>0.01))print *,'error-10'
call sub11(DX,i5,i10,n1,n2,n,k,EnsTim,Xp,r)
if (any(abs(DX-(/133746,138072,142398,146724,151050/))>0.01))print *,'error-11'
call sub12(DX,i5,i10,n1,n2,n,k,EnsTim,Xp,r)
if (any(abs(DX-(/408058,421256,434454,447652,460850/))>0.01))print *,'error-12'
call sub13(DX,i5,i10,n1,n2,n,k,EnsTim,Xp,r)
if (any(abs(DX-(/829756,856592,883428,910264,937100/))>0.01))print *,'error-13'
call sub14(DX,i5,i10,n1,n2,n,k,EnsTim,Xp,r)
if (any(abs(DX-(/1639052,1692064,1745076,1798088,1851100/))>0.01))print *,'error-14'
call sub15(DX,i5,i10,n1,n2,n,k,EnsTim,Xp,r)
if (any(abs(DX-(/4918861,5077952,5237043,5396134,5555225/))>0.01))print *,'error-15'
call sub16(DX,i5,i10,n1,n2,n,k,EnsTim,Xp,r)
if (any(abs(DX-(/14756583,15233856,15711129,16188402,16665675/))>0.01))print *,'error-16'
print *,'pass'
end

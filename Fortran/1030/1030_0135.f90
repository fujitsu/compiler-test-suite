subroutine sub01(DX,i5,i10,n1,n2,n,k,EnsTim,Xp,r)
real(8):: EnsTim(i5,i10),DX(i5),Xp(i10),r
DX(K+1:K+N)= r*DX(K+1:K+N)-MATMUL(EnsTim(1:N1,1:N2),Xp(1:N2))
end
subroutine sub02(DX,i5,i10,n1,n2,n,k,EnsTim,Xp,r)
real(8):: EnsTim(i5,i10),DX(i5),Xp(i10),r
DX(K+1:K+N)= DX(K+1:K+N)*r-MATMUL(EnsTim(1:N1,1:N2),Xp(1:N2))
end
subroutine sub03(DX,i5,i10,n1,n2,n,k,EnsTim,Xp,r)
real(8):: EnsTim(i5,i10),DX(i5),Xp(i10),r
DX(K+1:K+N)= DX(K+1:K+N)-r*MATMUL(EnsTim(1:N1,1:N2),Xp(1:N2))
end
subroutine sub04(DX,i5,i10,n1,n2,n,k,EnsTim,Xp,r)
real(8):: EnsTim(i5,i10),DX(i5),Xp(i10),r
DX(K+1:K+N)= DX(K+1:K+N)-MATMUL(EnsTim(1:N1,1:N2),Xp(1:N2))*r
end
subroutine sub05(DX,i5,i10,n1,n2,n,k,EnsTim,Xp,r)
real(8):: EnsTim(i5,i10),DX(i5),Xp(i10),r
DX(K+1:K+N)= r*DX(K+1:K+N)-r*MATMUL(EnsTim(1:N1,1:N2),Xp(1:N2))
end
subroutine sub06(DX,i5,i10,n1,n2,n,k,EnsTim,Xp,r)
real(8):: EnsTim(i5,i10),DX(i5),Xp(i10),r
DX(K+1:K+N)= DX(K+1:K+N)*r-MATMUL(EnsTim(1:N1,1:N2),Xp(1:N2))*r
end
subroutine sub07(DX,i5,i10,n1,n2,n,k,EnsTim,Xp,r)
real(8):: EnsTim(i5,i10),DX(i5),Xp(i10),r
DX(K+1:K+N)= r*DX(K+1:K+N)-MATMUL(EnsTim(1:N1,1:N2),Xp(1:N2))+&
 MATMUL(EnsTim(1:N1,1:N2),Xp(1:N2))
end
subroutine sub08(DX,i5,i10,n1,n2,n,k,EnsTim,Xp,r)
real(8):: EnsTim(i5,i10),DX(i5),Xp(i10),r
DX(K+1:K+N)= DX(K+1:K+N)*r-MATMUL(EnsTim(1:N1,1:N2),Xp(1:N2))+&
 MATMUL(EnsTim(1:N1,1:N2),Xp(1:N2))*r*r
end
subroutine sub09(DX,i5,i10,n1,n2,n,k,EnsTim,Xp,r)
real(8):: EnsTim(i5,i10),DX(i5),Xp(i10),r
DX(K+1:K+N)= DX(K+1:K+N)-r*MATMUL(EnsTim(1:N1,1:N2),Xp(1:N2))+&
 (-r*MATMUL(EnsTim(1:N1,1:N2),Xp(1:N2)))
end
subroutine sub10(DX,i5,i10,n1,n2,n,k,EnsTim,Xp,r)
real(8):: EnsTim(i5,i10),DX(i5),Xp(i10),r
DX(K+1:K+N)= DX(K+1:K+N)-MATMUL(EnsTim(1:N1,1:N2),Xp(1:N2))*r-&
 MATMUL(EnsTim(1:N1,1:N2),Xp(1:N2))
end
subroutine sub11(DX,i5,i10,n1,n2,n,k,EnsTim,Xp,r)
real(8):: EnsTim(i5,i10),DX(i5),Xp(i10),r
DX(K+1:K+N)= r*DX(K+1:K+N)-r*MATMUL(EnsTim(1:N1,1:N2),Xp(1:N2))+&
 MATMUL(EnsTim(1:N1,1:N2),Xp(1:N2))*r
end
subroutine sub12(DX,i5,i10,n1,n2,n,k,EnsTim,Xp,r)
real(8):: EnsTim(i5,i10),DX(i5),Xp(i10),r
DX(K+1:K+N)= DX(K+1:K+N)*r-MATMUL(EnsTim(1:N1,1:N2),Xp(1:N2))*r+&
 (-MATMUL(EnsTim(1:N1,1:N2),Xp(1:N2)))
end
subroutine sub13(DX,i5,i10,n1,n2,n,k,EnsTim,Xp,r)
real(8):: EnsTim(i5,i10),DX(i5),Xp(i10),r
DX(K+1:K+N)= DX(K+1:K+N)*r-MATMUL(EnsTim(1:N1,1:N2),Xp(1:N2))+&
 MATMUL(EnsTim(1:N1,1:N2),Xp(1:N2))*r*r+&
 (r*MATMUL(EnsTim(1:N1,1:N2),Xp(1:N2)))
end
subroutine sub14(DX,i5,i10,n1,n2,n,k,EnsTim,Xp,r)
real(8):: EnsTim(i5,i10),DX(i5),Xp(i10),r
DX(K+1:K+N)= DX(K+1:K+N)-r*MATMUL(EnsTim(1:N1,1:N2),Xp(1:N2))+&
 (-r*MATMUL(EnsTim(1:N1,1:N2),Xp(1:N2)))+&
 (r*MATMUL(EnsTim(1:N1,1:N2),Xp(1:N2)))
end
subroutine sub15(DX,i5,i10,n1,n2,n,k,EnsTim,Xp,r)
real(8):: EnsTim(i5,i10),DX(i5),Xp(i10),r
DX(K+1:K+N)= DX(K+1:K+N)-MATMUL(EnsTim(1:N1,1:N2),Xp(1:N2))*r-&
 MATMUL(EnsTim(1:N1,1:N2),Xp(1:N2))-&
 MATMUL(EnsTim(1:N1,1:N2),Xp(1:N2))*r
end
subroutine sub16(DX,i5,i10,n1,n2,n,k,EnsTim,Xp,r)
real(8):: EnsTim(i5,i10),DX(i5),Xp(i10),r
DX(K+1:K+N)= r*DX(K+1:K+N)-r*MATMUL(EnsTim(1:N1,1:N2),Xp(1:N2))+&
 MATMUL(EnsTim(1:N1,1:N2),Xp(1:N2))*r+&
 MATMUL(EnsTim(1:N1,1:N2),Xp(1:N2))*r
end
subroutine sub17(DX,i5,i10,n1,n2,n,k,EnsTim,Xp,r)
real(8):: EnsTim(i5,i10),DX(i5),Xp(i10),r
DX(K+1:K+N)= DX(K+1:K+N)*r-MATMUL(EnsTim(1:N1,1:N2),Xp(1:N2))*r+&
 (-MATMUL(EnsTim(1:N1,1:N2),Xp(1:N2)))+&
 MATMUL(EnsTim(1:N1,1:N2),Xp(1:N2))*r
end
subroutine sub18(DX,i5,i10,n1,n2,n,k,EnsTim,Xp,r)
real(8):: EnsTim(i5,i10),DX(i5),Xp(i10),r
DX(K+1:K+N)= r*DX(K+1:K+N)-r*MATMUL(EnsTim(1:N1,1:N2),Xp(1:N2))+&
 MATMUL(EnsTim(1:N1,1:N2),Xp(1:N2))*r+&
 MATMUL(EnsTim(1:N1,1:N2),Xp(1:N2))*r+&
 MATMUL(EnsTim(1:N1,1:N2),Xp(1:N2))*r+&
 MATMUL(EnsTim(1:N1,1:N2),Xp(1:N2))*r
end
real(8):: EnsTim(5,10),DX(5),Xp(10),r
r=2.0_8
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
if (any(abs(DX-(/-1663,-1716,-1769,-1822,-1875/))>0.01))print *,'error-1'
call sub02(DX,i5,i10,n1,n2,n,k,EnsTim,Xp,r)
if (any(abs(DX-(/-5031,-5192,-5353,-5514,-5675/))>0.01))print *,'error-2'
call sub03(DX,i5,i10,n1,n2,n,k,EnsTim,Xp,r)
if (any(abs(DX-(/-8441,-8712,-8983,-9254,-9525/))>0.01))print *,'error-3'
call sub04(DX,i5,i10,n1,n2,n,k,EnsTim,Xp,r)
if (any(abs(DX-(/-11851,-12232,-12613,-12994,-13375/))>0.01))print *,'error-4'
call sub05(DX,i5,i10,n1,n2,n,k,EnsTim,Xp,r)
if (any(abs(DX-(/-27112,-27984,-28856,-29728,-30600/))>0.01))print *,'error-5'
call sub06(DX,i5,i10,n1,n2,n,k,EnsTim,Xp,r)
if (any(abs(DX-(/-57634,-59488,-61342,-63196,-65050/))>0.01))print *,'error-6'
call sub07(DX,i5,i10,n1,n2,n,k,EnsTim,Xp,r)
if (any(abs(DX-(/-115268,-118976,-122684,-126392,-130100/))>0.01))print *,'error-7'
call sub08(DX,i5,i10,n1,n2,n,k,EnsTim,Xp,r)
if (any(abs(DX-(/-225421,-232672,-239923,-247174,-254425/))>0.01))print *,'error-8'
call sub09(DX,i5,i10,n1,n2,n,k,EnsTim,Xp,r)
if (any(abs(DX-(/-232241,-239712,-247183,-254654,-262125/))>0.01))print *,'error-9'
call sub10(DX,i5,i10,n1,n2,n,k,EnsTim,Xp,r)
if (any(abs(DX-(/-237356,-244992,-252628,-260264,-267900/))>0.01))print *,'error-10'
call sub11(DX,i5,i10,n1,n2,n,k,EnsTim,Xp,r)
if (any(abs(DX-(/-474712,-489984,-505256,-520528,-535800/))>0.01))print *,'error-11'
call sub12(DX,i5,i10,n1,n2,n,k,EnsTim,Xp,r)
if (any(abs(DX-(/-954539,-985248,-1015957,-1046666,-1077375/))>0.01))print *,'error-12'
call sub13(DX,i5,i10,n1,n2,n,k,EnsTim,Xp,r)
if (any(abs(DX-(/-1900553,-1961696,-2022839,-2083982,-2145125/))>0.01))print *,'error-13'
call sub14(DX,i5,i10,n1,n2,n,k,EnsTim,Xp,r)
if (any(abs(DX-(/-1903963,-1965216,-2026469,-2087722,-2148975/))>0.01))print *,'error-14'
call sub15(DX,i5,i10,n1,n2,n,k,EnsTim,Xp,r)
if (any(abs(DX-(/-1912488,-1974016,-2035544,-2097072,-2158600/))>0.01))print *,'error-15'
call sub16(DX,i5,i10,n1,n2,n,k,EnsTim,Xp,r)
if (any(abs(DX-(/-3821566,-3944512,-4067458,-4190404,-4313350/))>0.01))print *,'error-16'
call sub17(DX,i5,i10,n1,n2,n,k,EnsTim,Xp,r)
if (any(abs(DX-(/-7644837,-7890784,-8136731,-8382678,-8628625/))>0.01))print *,'error-17'
call sub18(DX,i5,i10,n1,n2,n,k,EnsTim,Xp,r)
if (any(abs(DX-(/-15279444,-15771008,-16262572,-16754136,-17245700/))>0.01))print *,'error-18'
print *,'pass'
end

 call sub(1204661474012350511833.0000000000000_16,&
          58.000000000000000000000000000000000_16)
 print *,'pass'
end
subroutine sub(X,Y)
 REAL(16) X,Y,Z,U
 Z = X*Y 
 U = Z/X
 write(1,*)'X=',X
 write(1,*)'Y=',Y
 write(1,*)'Z=X*Y=',Z
 write(1,*)'U=Z/X=',U
 write(1,*)'U-Y=',U-Y
 if (abs(U-Y)>1.E-15_16)print *,'error'
end

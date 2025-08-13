 call sub(1204661474012350511833.0000000000000_16,&
          58.000000000000000000000000000000000_16)
 print *,'pass'
end
subroutine sub(X,Y)
 REAL(16) X,Y,Z,U
 Z = X*Y
 U = Z/X
 write(9,*)'X=',X
 write(9,*)'Y=',Y
 write(9,*)'Z=X*Y=',Z
 write(9,*)'U=Z/X=',U
 write(9,*)'U-Y=',U-Y
 if (abs(U-Y)>1.E-15_16)print *,'error'
end

  real(kind=8), dimension(10) ::A
  real(kind=8), dimension(10) ::B=(/1,3,5,7,9,11,13,15,17,19/)
  real(kind=8), dimension(10) ::C=(/(i,i=10,19)/)
  real(kind=8), dimension(10) ::AX
  real(kind=8), dimension(10) ::BX=(/1,3,5,7,9,11,13,15,17,19/)
  real(kind=8), dimension(10) ::CX=(/(i,i=10,19)/)

  A = EXP(B + C + (/1,2,3,4,5,6,7,8,9,10/))

  AX = EXP(BX + CX + (/1,2,3,4,5,6,7,8,9,10/))

  DO I=1,10
     if (DABS(1-(A(I)/AX(I))) > 0.00001) then
        print *,"NG",A(I),AX(I)
     end if
  END DO
  print *,"OK"

end program

  real*8 A(100)

  do i = 1,100
     A(i) = i
  end do

  call sub(A)
end program

subroutine sub(A)
  real*8  A(100)
  real*8  B(100)/100*0/
  real*8  BX(100)/100*0/

  B(100:1:-2) = EXP(A(100:1:-2))

  BX(100:1:-2) = EXP(A(100:1:-2))

  DO I=1,100
     if (DABS(1-(B(I)/BX(I))) > 0.00001) then
        print *,"NG",B(I),BX(I)
     end if
  END DO
  print *,"OK"

end subroutine sub

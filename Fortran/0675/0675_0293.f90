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

  do i = 1,100
     B(i) = EXP(A(i))
  end do

  do i = 1,100
     BX(i) = EXP(A(i))
  end do

  DO I=1,100
     if (DABS(1-(B(I)/BX(I))) > 0.00001) then
        print *,"NG",B(I),BX(I)
     end if
  END DO
  print *,"OK"

end subroutine sub

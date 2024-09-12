  type array
     real(kind=8), dimension(100) ::B=(/(i,i=1,100)/)
  end type array

  real(kind=8), dimension(100) ::A
  real(kind=8), dimension(100) ::AX
  type(array) :: test

  do i=1,100
     A(i)  = EXP(test%B(i))
  end do

  do i=1,100
     AX(i)  = EXP(test%B(i))
  end do

  DO I=1,100
     if (DABS(1-(A(I)/AX(I))) > 0.00001) then
        print *,"NG",A(I),AX(I)
     end if
  END DO
  print *,"OK"

end program

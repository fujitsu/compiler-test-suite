  type array
     real(kind=8), dimension(100) ::B
  end type array

  real(kind=8), dimension(100) ::A=(/(i,i=1,100)/)
  type(array) :: test
  type(array) :: test2

  do i=1,100
     test%B(i) = EXP(A(i))
  end do

  do i=1,100
     test2%B(i) = EXP(A(i))
  end do

  DO I=1,100
     if (DABS(1-(test%B(I)/test2%B(I))) > 0.00001) then
        print *,"NG",test%B(I),test2%B(I)
     end if
  END DO
  print *,"OK"

end program

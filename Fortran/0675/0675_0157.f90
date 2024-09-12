  REAL*8 B(10,10),C(10,10),M,N,X,Y
  REAL*8 BX(10,10),CX(10,10)

  do i=1,10
     do k=1,10
        X=i
        Y=k
        M=Y**X/100000
        B(i,k)=COS(M)
        N=M+B(i,k)
        C(i,k)=SIN(N*M)
     enddo
  enddo

  do i=1,10
     do k=1,10
        X=i
        Y=k
        M=Y**X/100000
        BX(i,k)=COS(M)
        N=M+BX(i,k)
        CX(i,k)=SIN(N*M)
     enddo
  enddo

  DO I=1,10
     DO J=1,10
        if (DABS(1-(B(J,I)/BX(J,I))) > 0.00001) then
           print *,"NG",B(J,I),BX(J,I)
        end if
        if (DABS(1-(C(J,I)/CX(J,I))) > 0.00001) then
           print *,"NG",C(J,I),CX(J,I)
        end if
     END DO
  END DO
  print *,"OK"

  stop
end program

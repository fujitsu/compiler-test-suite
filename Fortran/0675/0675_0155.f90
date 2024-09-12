  REAL*8 A(10,10),B(10,10),C(10,10),L,M,N
  REAL*8 AX(10,10),BX(10,10),CX(10,10)

  do i=1,10
     do j=1,10
        L=j*2
        A(i,j)=EXP(L)
     enddo
     do k=1,10
        M=k**L
        B(i,k)=LOG(M+1)
        N=M+A(i,k)
        C(i,k)=SIN(N/1000000)
     enddo
  enddo

  do i=1,10
     do j=1,10
        L=j*2
        AX(i,j)=EXP(L)
     enddo
     do k=1,10
        M=k**L
        BX(i,k)=LOG(M+1)
        N=M+AX(i,k)
        CX(i,k)=SIN(N/1000000)
     enddo
  enddo

  DO I=1,10
     DO J=1,10
        if (DABS(1-(A(J,I)/AX(J,I))) > 0.00007) then
           print *,"NG",A(J,I),AX(J,I)
        end if
        if (DABS(1-(B(J,I)/BX(J,I))) > 0.00007) then
           print *,"NG",B(J,I),BX(J,I)
        end if
        if (DABS(1-(C(J,I)/CX(J,I))) > 0.00007) then
           print *,"NG",C(J,I),CX(J,I)
        end if
     END DO
  END DO
  print *,"OK"

  stop
end program

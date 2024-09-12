  REAL*8 A(10,10),B(10,10),C(10,10),L,M,N
  REAL*8 D(10,10),E(10,10),F(10,10)

  do i=1,10
     L=i**2
     do j=1,10
        A(i,j)=EXP(L+j)
     enddo
     M=L-1
     do k=1,10
        B(i,k)=EXP(M)
        N=M+k
        C(i,k)=EXP(N)
     enddo
  enddo

  do i=1,10
     L=i**2
     do j=1,10
        D(i,j)=EXP(L+j)
     enddo
     M=L-1
     do k=1,10
        E(i,k)=EXP(M)
        N=M+k
        F(i,k)=EXP(N)
     enddo
  enddo

  DO i=1,10
     DO j=1,10
        if (DABS(1-(A(i,j)/D(i,j))) > 0.00001) then
           print *,"NG",A(i,j),D(i,j)
        end if
        if (DABS(1-(B(i,j)/E(i,j))) > 0.00001) then
           print *,"NG",B(i,j),E(i,j)
        end if
        if (DABS(1-(C(i,j)/F(i,j))) > 0.00001) then
           print *,"NG",C(i,j),F(i,j)
        end if
     END DO
  END DO
  print *,"OK"

  stop
end program

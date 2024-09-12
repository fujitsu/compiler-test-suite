       REAL A(100,10),B(100,10)
       DATA B/1000*0.1D0/
       DO 1 I=1,100
       B(I,1)=B(I,1)+0.1
       B(I,2)=B(I,2)+0.2
   1   B(I,3)=B(I,3)+0.3
       CALL SUB(A,B,100,10)

       call check(a)
       END
       SUBROUTINE SUB(A,B,N,M)
       REAL A(N,M),B(N,M)
       DO 10 J=1,N
       DO 10 I=1,M
  10   A(J,I)=SIN(B(J,I))
       RETURN
       END

       subroutine check(a)
       REAL A(100,10)
       DO  J=1,100
       DO  I=1,10
       select case(i)
       case (1)
	 if(abs((a(j,i)-0.198669329)/a(j,i)).gt.0.1e-5) PRINT *,' NG1 '
       case (2)
	 if(abs((a(j,i)-0.295520216)/a(j,i)).gt.0.1e-5) PRINT *,' NG2 '
       case (3)
	 if(abs((a(j,i)-0.389418334)/a(j,i)).gt.0.1e-5) PRINT *,' NG3 '
       case default
	 if(abs((a(j,i)-9.98334214e-02)/a(j,i)).gt.0.1e-5) PRINT *,' NG4 '
       end select
       END DO
       END DO
       print *,' PASS '
       END

  !             CVCT5808            LEVEL=5        DATE=84.02.03
  ! < CVCT5808 >
  !  CHANGE OF INDEX FOR ADJUSTABLE ARRAY
  !
  type st1
     REAL A(1:10,1:10),B(10,1:10)
  end type st1
  type(st1) :: str
  DATA str%A,str%B/100*1.0,100*2.0/
  CALL  SUB(str%A,str%B,0,1,10,-1)
END program
SUBROUTINE  SUB(A,B,N1,N2,N3,N4)
  DIMENSION   A(N1+N2:N1+10,N4+2:N3),B(N1+N2:N1+10,N4+2:N3)
  DATA        IS/0/
  !
  ! (1) INNER MOST INDEX IS 'I'
  !
  DO  I=N1+N2,10
     DO  J=N4+2,N3
        A(I,J) = A(I,J+IS) + B(I,J) * 2.
     enddo
  enddo
  write(6,1) 'NO.1 ',A
  write(6,*)
  !
  ! (2) NOT CHANGE
  !
  DO  I=N1+N2,10
     DO  J=N4+2,N3
        IF(I.EQ.J) THEN
           A(I,J) = A(I,J+IS) + B(I,J) * 2.
        ENDIF
20      CONTINUE
     enddo
  enddo
  write(6,1) 'NO.2 ',A
  1 format(a,(10f8.3))
  RETURN
END SUBROUTINE SUB

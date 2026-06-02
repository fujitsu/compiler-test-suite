  !             CVCT5809            LEVEL=3        DATE=84.02.03
  ! < CVCT5809 >
  !   CHANGE OF DO INDEX
  !
  PARAMETER (N1=10,N2=10,N3=1)
  type st1
     integer A(N3:N1,N3:N2,N1),B(N3:N1,N3:N2,N1)
  end type st1
  type(st1) :: str
  DATA str%A,str%B/1000*1.0,1000*2.0/
  DO  I=1,N2
     DO  J=1,N1
        str%A(1,1,I) = str%A(1,1,I) + str%B(I,J,1) * 2.
     enddo
  enddo
  write(6,*) ((str%A(j,j,i),i=1,n2),j=1,2)
END program

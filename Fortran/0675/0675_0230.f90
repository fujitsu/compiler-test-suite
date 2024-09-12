	REAL*4 A1(1000),A2(1000),B1(1000)
        DO I=1,1000
           B1(I)=I*3
           A1(I)=SIN(B1(I))
           A2(I)=COS(B1(I))
        ENDDO
        write(6,*)"A1=",A1
        write(6,*)"A2=",A2
        write(6,*)"B1=",B1
        END 

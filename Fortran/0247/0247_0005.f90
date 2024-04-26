PROGRAM MAIN
INTEGER :: K,X,L
X=0
K=10
L=30
DO CONCURRENT(K=1:5:2,K>2)
    DO CONCURRENT (L=2:4,L>1)
     associate (a=>b)
     do m=1,2
     IF(L==2 .AND. K==5 .AND. m==2) THEN
   print *,'PASS'
     END IF
    END do
    end associate
    END DO
END DO
END PROGRAM

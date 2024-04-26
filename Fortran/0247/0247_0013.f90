DO 10, CONCURRENT(M=1:5,M.eq.3)
DO 10, CONCURRENT(K=1:5,L=1:4,(K<3 .OR. K==5))
if (M.eq. 3 .AND. L.eq.4 .AND. K.eq.5) print *,'PASS'
10 END DO
END

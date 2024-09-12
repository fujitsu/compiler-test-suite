      PROGRAM MAIN
       REAL A(192)
       DATA A/192*0./ 
       LOGICAL M(192)
       DATA M/64*.TRUE.,64*.FALSE.,64*.TRUE./ 
       INTEGER K1
       IP = 0
                                                     
       DO K1=1,192
        IF (M(K1)) THEN
         IP = IP + 1
         A(IP) = K1
        END IF
       END DO
       WRITE (6, *) IP
       DO K1=192,1,-1
        K = K1
        IF (A(K1) .NE. 0) GO TO 21
       END DO
       K = 0
   21  WRITE (6, 999) K, A(K)
  999  FORMAT(10G20.6)
      END

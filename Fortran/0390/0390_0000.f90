     call s1
     print *,'pass'
     end
     MODULE TEST1
     INTEGER, PARAMETER :: JMIN(1:10) = (/ (I,I=1,10) /)
     END MODULE TEST1

     subroutine s1
     USE TEST1
     INTEGER :: I

     DO I = 1,10
       write(1,*) 'JMIN(I) = ', JMIN(I)
     END DO

     END 

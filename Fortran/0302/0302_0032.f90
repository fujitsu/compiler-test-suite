program main
  real(kind=16) res1, res2, res3
  call sub(res1,10)
  call sub(res2,2662)
  call sub(res3,2663)
  print *, 'OK'

end program main

subroutine sub(res,n)
  integer*4 n
       INTEGER*4 ID10(3000), ID20(3000), ID30(3000)
       real(kind=16) res, c1, c2

       DATA ID10/3000*1/ 
       DATA ID20/3000*2/ 
       DATA ID30/3000*4/ 

       DO I=1,91,5
        ID10(I) = ID20(I) - ID30(I+1)
        ID10(I+1) = ID20(I+1) - ID30(I+2)
        ID10(I+2) = ID20(I+2) - ID30(I+3)
        ID10(I+3) = ID20(I+3) - ID30(I+4)
        ID10(I+4) = ID20(I+4) - ID30(I+5)
       END DO

       res = 1.0
       c1 = 1.1
       c2 = 1.2

!$OMP PARALLEL SHARED (ID20,ID10,ID30) PRIVATE (I)
!$OMP DO
       DO I=1,n
        if (I <= 10) then
           res = res * c1 * c2
        end if

        ID20(I) = MAX (ID10(I), ID30(I), 5)
        IF (ID10(I)) 3, 4, 5
    3   ID10(I) = -ID10(I)
        GO TO 5
    4   ID10(I) = 10
    5   ID30(I) = ID10(I) + ID20(I)
        IF (ID30(I) .GT. 70) THEN
         ID30(I) = 100
        END IF
       END DO
!$OMP END DO NOWAIT
!$OMP END PARALLEL 

end subroutine sub

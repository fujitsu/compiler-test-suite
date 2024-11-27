INTEGER A(3,3), R(3,3)
PARAMETER (A = RESHAPE ( (/ 1,4,7,2,5,8,3,6,9 /), (/ 3,3 /) ))
R = TRANSPOSE(A)
IF ((R(1,1) .EQ. 1) .AND. (R(1,2) .EQ. 4) .AND. (R(1,3) .EQ. 7) .AND. &
    (R(2,1) .EQ. 2) .AND. (R(2,2) .EQ. 5) .AND. (R(2,3) .EQ. 8) .AND. &
    (R(3,1) .EQ. 3) .AND. (R(3,2) .EQ. 6) .AND. (R(3,3) .EQ. 9)) THEN
   PRINT *,'pass'
ELSE
   PRINT *,'error',R
END IF
END

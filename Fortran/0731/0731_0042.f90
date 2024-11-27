   SUBROUTINE SP(  B, LDB  )
         INTEGER, INTENT(IN) :: LDB
         REAL, INTENT(INOUT) :: B(*)
         INTERFACE
           SUBROUTINE S(  B, LDB )
             INTEGER, INTENT(IN) ::  LDB
             REAL, INTENT(INOUT) :: B(LDB,*)
           END SUBROUTINE S
         END INTERFACE
         CALL S(  B, LDB)
      END SUBROUTINE SP
         INTEGER :: LDB=1
         REAL :: B(1,2)=reshape((/1,2/),(/1,2/))
call SP(  B, LDB  )
print *,'pass'
end
           SUBROUTINE S(  B, LDB )
             INTEGER, INTENT(IN) ::  LDB
             REAL, INTENT(INOUT) :: B(LDB,*)
           if (LDB/=1)print *,'NG1'
           if (any(abs(B(1,1:2)-(/1,2/))>0.001))print *,'NG2'
           END SUBROUTINE S


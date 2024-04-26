 REAL*2    :: R2
         R2=3
        CALL SUB(R2)
print *,'pass'
         CONTAINS
         SUBROUTINE SUB(DMY)
                REAL(2) :: DMY
         END SUBROUTINE
         END
        

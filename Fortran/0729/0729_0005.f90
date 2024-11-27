PROGRAM MAIN

        CHARACTER(LEN=3) :: CHR_0102
        INTEGER(KIND=4)  :: INT4_0101
    INT4_0101=IACHAR('A')
    CHR_0102(2:2)='B'

        CALL SUB0101(CHR_0102,INT4_0101)
        if(CHR_0102/='ABC')write(6,*) "NG"
        if(ACHAR(INT4_0101)/='C')write(6,*) "NG"
    print *,'pass'

        CONTAINS

                PURE SUBROUTINE SUB0101(CHR_0002,INT4_0001)

                        CHARACTER(LEN=3),INTENT(INOUT) :: CHR_0002
                        INTEGER(KIND=4),INTENT(INOUT) :: INT4_0001
                        CHR_0002=ACHAR(INT4_0001) //CHR_0002(2:2)//'C'
                        INT4_0001=IACHAR(CHR_0002(3:3))

                END SUBROUTINE SUB0101

END

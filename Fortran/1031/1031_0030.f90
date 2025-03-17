       SUBROUTINE FILE_TEST(ITEST)
       INTEGER   ITEST
       PARAMETER (N_TEST=10)
       TYPE TEST_STRUCT
         SEQUENCE
         LOGICAL :: USED = .FALSE.
         INTEGER LEN
         INTEGER(1), POINTER :: BUF(:)
       END TYPE
       TYPE (TEST_STRUCT) TEST(N_TEST)
       ITEST=1
       ISIZE=1000
       ALLOCATE(TEST(ITEST)%BUF(1:ISIZE),STAT=ISTATUS)
       RETURN
       END
       print *,'pass'
       end

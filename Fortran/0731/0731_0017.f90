
MODULE n_mod
   IMPLICIT NONE
   PUBLIC
   INTEGER, PARAMETER :: dbl = KIND( 1.0D0 )
END MODULE n_mod

MODULE blas_mod
   IMPLICIT NONE
   PUBLIC

   INTERFACE blas_GEMM
      SUBROUTINE DGEMM( TRANSA, TRANSB, M, N, K, &
         DALPHA, DA, LDA, DB, LDB, DBETA, DC, LDC )
         USE n_mod
         CHARACTER(LEN=1) TRANSA, TRANSB
         INTEGER          M, N, K, LDA, LDB, LDC
         REAL(dbl)        DALPHA, DA(*), DB(*), DBETA, DC(*)
      END SUBROUTINE DGEMM
      SUBROUTINE DGEMM1( TRANSA, TRANSB, M, N, K, &
         DALPHA, DA, LDA, DB, LDB, DBETA, DC, LDC )
         USE n_mod
         CHARACTER(LEN=1) TRANSA, TRANSB
         INTEGER          M, N, K, LDA, LDB, LDC
         REAL(dbl)        DALPHA, DA(1,*), DB(1,*), DBETA, DC(1,*)
      END SUBROUTINE DGEMM1
   END INTERFACE
END MODULE blas_mod

PROGRAM MAIN
   USE n_mod
   USE blas_mod
   IMPLICIT NONE

   INTEGER :: n
   REAL(dbl), ALLOCATABLE :: x1(:), x2(:,:)

   write(1,*) 1
   rewind 1
   read(1,*) n
   print *,'pass'
   if (n==1)stop
   CALL blas_GEMM( &
      TRANSA='T', TRANSB='N', M=n, N=n, K=n, &
      DALPHA=1.0_dbl, DA=x1, LDA=n, &
      DB=x1, LDB=n, &
      DBETA=0.0_dbl, DC=x1, LDC=n &
      )
   
   CALL blas_GEMM( &
      TRANSA='T', TRANSB='N', M=n, N=n, K=n, &
      DALPHA=1.0_dbl, DA=x2, LDA=n, &
      DB=x2, LDB=n, &
      DBETA=0.0_dbl, DC=x2, LDC=n &
      )

   CALL DGEMM( &
      TRANSA='T', TRANSB='N', M=n, N=n, K=n, &
      DALPHA=1.0_dbl, DA=x2, LDA=n, &
      DB=x2, LDB=n, &
      DBETA=0.0_dbl, DC=x2, LDC=n &
      )
END PROGRAM MAIN

      SUBROUTINE DGEMM( TRANSA, TRANSB, M, N, K, &
         DALPHA, DA, LDA, DB, LDB, DBETA, DC, LDC )
         USE n_mod
         CHARACTER(LEN=1) TRANSA, TRANSB
         INTEGER          M, N, K, LDA, LDB, LDC
         REAL(dbl)        DALPHA, DA(*), DB(*), DBETA, DC(*)
      END SUBROUTINE DGEMM
      SUBROUTINE DGEMM1( TRANSA, TRANSB, M, N, K, &
         DALPHA, DA, LDA, DB, LDB, DBETA, DC, LDC )
         USE n_mod
         CHARACTER(LEN=1) TRANSA, TRANSB
         INTEGER          M, N, K, LDA, LDB, LDC
         REAL(dbl)        DALPHA, DA(1,*), DB(1,*), DBETA, DC(1,*)
      END SUBROUTINE DGEMM1


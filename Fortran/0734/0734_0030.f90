   MODULE mod_xxx
      IMPLICIT NONE
      INTEGER              :: m, n
      INTEGER              :: stat_alloc
      INTEGER, ALLOCATABLE :: indices(:)
   END MODULE mod_xxx

   PROGRAM MAIN
      USE mod_xxx
      IMPLICIT NONE
      integer::i1,i2
      write(15,*) -3,4;rewind 15
      WRITE (17, FMT='(1X,A)', ADVANCE='NO') 'Give the array bounds: '
      READ  (15,*) m, n
      WRITE (16,*) 'm = ', m, 'n = ', n

      ALLOCATE ( indices(m:n), STAT=stat_alloc )
      IF ( stat_alloc .NE. 0 ) WRITE (*,*) 'Allocation failed.'

      WRITE (14,*)  &
         LBOUND(indices(:), DIM=1), UBOUND(indices(:), DIM=1)
      WRITE (14,*)  &
         LBOUND(indices   , DIM=1), UBOUND(indices   , DIM=1)
  rewind 14
  read(14,*) i1,i2;if (any((/1,8/)/=(/i1,i2/)))print *,'error-1'
  read(14,*) i1,i2;if (any((/-3,4/)/=(/i1,i2/)))print *,'error-2'
print *,'pass'
   END PROGRAM MAIN

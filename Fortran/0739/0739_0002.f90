call sample
print *,'pass'
end
subroutine sample
      REAL(4), DIMENSION(5) :: R
          INTEGER, ALLOCATABLE, DIMENSION(:) :: ISEED
          INTEGER :: ISIZE
!
          CALL RANDOM_SEED(SIZE=ISIZE)
          ALLOCATE(ISEED(ISIZE))
          CALL RANDOM_SEED(GET=ISEED)
!
          WRITE(9,*) "SEED=",ISEED
!
          CALL RANDOM_NUMBER(R)
          WRITE(9,*) "RANDOM_NUMBER=",R
!
          DEALLOCATE(ISEED)
!
          END

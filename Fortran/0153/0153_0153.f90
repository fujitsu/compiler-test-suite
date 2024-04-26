call sample
print *,'pass'
end
subroutine sample
      REAL(4), DIMENSION(5) :: R
          INTEGER, ALLOCATABLE, DIMENSION(:) :: ISEED
          INTEGER :: ISIZE
          CALL RANDOM_SEED(SIZE=ISIZE)
          ALLOCATE(ISEED(ISIZE+100))
          ISEED=-2
          CALL RANDOM_SEED(GET=ISEED)
          WRITE(1,*) "SEED=",ISEED
    if (ISIZE==1) then
          if (iseed(2)/=-2) print *,101,'fortfe 03305'
     end if
          CALL RANDOM_NUMBER(R)
          WRITE(1,*) "RANDOM_NUMBER=",R
          DEALLOCATE(ISEED)
          END

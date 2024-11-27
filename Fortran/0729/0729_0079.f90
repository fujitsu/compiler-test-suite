MODULE module_arrays

   IMPLICIT NONE

   INTEGER, ALLOCATABLE, SAVE :: array_2(:,:)

END MODULE module_arrays

PROGRAM reallocate_ar

   USE module_arrays

   IMPLICIT NONE

   INTEGER :: i
   INTEGER :: i_1_min, i_1_max, i_2_min, i_2_max

   i_1_min=1; i_1_max=2;
   i_2_min=1; i_2_max=2
   ALLOCATE ( array_2(i_1_min:i_1_max, i_2_min:i_2_max) )

   array_2 = 0

   DO i = i_1_min, i_1_max
      WRITE (1,*) array_2(i,:)
   END DO

   CALL reallocate_2D (1)

   DEALLOCATE (array_2)

   i_1_min=1;i_1_max=2
   i_2_min=1;i_2_max=2
   ALLOCATE ( array_2(i_1_min:i_1_max, i_2_min:i_2_max) )

   array_2 = 1

   CALL reallocate_2D (2)

   DO i = i_1_min, i_1_max
      WRITE (1,*) array_2(i,:)
   END DO
   print *,'pass'

END PROGRAM reallocate_ar

SUBROUTINE reallocate_2D (flag)

   USE module_arrays

   IMPLICIT NONE

   INTEGER, INTENT(IN)        :: flag
   INTEGER,              SAVE :: i_1_min_old, i_1_max_old, &
                                 i_2_min_old, i_2_max_old
   INTEGER, ALLOCATABLE, SAVE :: tmp_array(:)
   INTEGER                    :: index_t, index_1, index_2

   IF (flag .EQ. 1) THEN

      i_1_min_old = LBOUND(array_2,1)
      i_1_max_old = UBOUND(array_2,1)
      i_2_min_old = LBOUND(array_2,2)
      i_2_max_old = UBOUND(array_2,2)

      ALLOCATE ( tmp_array(SIZE(array_2)) )
      index_t = 0
      DO index_2 = i_2_min_old, i_2_max_old
         DO index_1 = i_1_min_old, i_1_max_old
            index_t = index_t + 1
            tmp_array(index_t) = array_2(index_1,index_2)
         END DO
      END DO

   ELSE IF (flag .EQ. 2) THEN

      index_t = 0
      DO index_2 = i_2_min_old, i_2_max_old
         DO index_1 = i_1_min_old, i_1_max_old
            index_t = index_t + 1
            IF ( index_1 .GE. LBOUND(array_2,1) .AND. &
                 index_1 .LE. UBOUND(array_2,1) .AND. &
                 index_2 .GE. LBOUND(array_2,2) .AND. &
                 index_2 .LE. UBOUND(array_2,2) )     &
               array_2(index_1,index_2) = tmp_array(index_t)
         END DO
      END DO
      DEALLOCATE ( tmp_array )

   END IF

END SUBROUTINE reallocate_2D

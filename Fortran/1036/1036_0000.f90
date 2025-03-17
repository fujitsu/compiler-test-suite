MODULE kind_mod

   IMPLICIT NONE

   PRIVATE

   INTEGER, PUBLIC, PARAMETER :: I4=SELECTED_INT_KIND(9)
   INTEGER, PUBLIC, PARAMETER :: TF=KIND(.TRUE._I4)

END MODULE kind_mod

MODULE pointer_mod

   USE kind_mod, ONLY : I4

   IMPLICIT NONE

   PRIVATE

   TYPE, PUBLIC :: pointer_vector_I4
      INTEGER(I4), POINTER, DIMENSION(:) :: vect
   END TYPE pointer_vector_I4

   INTERFACE ASSIGNMENT(=)
      MODULE PROCEDURE p_vect_I4_equals_p_vect_I4_sub
   END INTERFACE

   PUBLIC :: ASSIGNMENT(=)

CONTAINS

   PURE ELEMENTAL SUBROUTINE p_vect_I4_equals_p_vect_I4_sub(a1, a2)
      IMPLICIT NONE
      TYPE(pointer_vector_I4), INTENT(OUT) :: a1
      TYPE(pointer_vector_I4), INTENT(IN) :: a2
      a1%vect = a2%vect
   END SUBROUTINE p_vect_I4_equals_p_vect_I4_sub

END MODULE pointer_mod

PROGRAM MAIN

   USE pointer_mod, ONLY : pointer_vector_I4, ASSIGNMENT(=)

   USE kind_mod, ONLY : I4, TF

   IMPLICIT NONE

   INTEGER(I4), DIMENSION(12_I4), TARGET :: integer_array
   LOGICAL(TF), DIMENSION(2_I4,3_I4) :: logical_array
   TYPE(pointer_vector_I4), DIMENSION(6_I4) :: p_vect
   INTEGER(I4) :: i

   logical_array(:,1_I4:3_I4:2_I4)=.TRUE._TF
   logical_array(:,2_I4)=.FALSE._TF

  if (KIND(i)==I4)goto 9999
   DO i=1_I4,6_I4
      p_vect(i)%vect => integer_array((2_I4*i-1_I4):(2_I4*i))
   END DO

   integer_array=0_I4

   DO i=1_I4,3_I4,1_I4
      IF (logical_array(1_I4,i)) THEN
         integer_array(4_I4*i-3_I4)=&
            & elemental_nonpointer_fun(2_I4*i-1_I4)
         integer_array(4_I4*i-2_I4)=&
            & -elemental_nonpointer_fun(2_I4*i-1_I4)
      ELSE
         integer_array(4_I4*i-3_I4)=&
            & elemental_nonpointer_fun(0_I4)
         integer_array(4_I4*i-2_I4)=&
            & -elemental_nonpointer_fun(0_I4)
      END IF
      IF (logical_array(2_I4,i)) THEN
         integer_array(4_I4*i-1_I4)=&
            & elemental_nonpointer_fun(2_I4*i)
         integer_array(4_I4*i)=&
            & -elemental_nonpointer_fun(2_I4*i)
      ELSE
         integer_array(4_I4*i-1_I4)=&
            & elemental_nonpointer_fun(0_I4)
         integer_array(4_I4*i)=&
            & -elemental_nonpointer_fun(0_I4)
      END IF
   END DO

   integer_array=0_I4

   DO i=1_I4,3_I4,1_I4
      WHERE(logical_array((/1_I4,2_I4/),i))
         integer_array((4_I4*i-3_I4):(4_I4*i-1_I4):2_I4)=&
            & elemental_nonpointer_fun((/(2_I4*i-1_I4),(2_I4*i)/))
         integer_array((4_I4*i-2_I4):(4_I4*i):2_I4)=&
            & -elemental_nonpointer_fun((/(2_I4*i-1_I4),(2_I4*i)/))
      ELSEWHERE
         integer_array((4_I4*i-3_I4):(4_I4*i-1_I4):2_I4)=&
            & elemental_nonpointer_fun((/0_I4,0_I4/))
         integer_array((4_I4*i-2_I4):(4_I4*i):2_I4)=&
            & -elemental_nonpointer_fun((/0_I4,0_I4/))
      END WHERE
   END DO

   integer_array=0_I4

   FORALL (i=1_I4:3_I4:1_I4)
      WHERE(logical_array((/1_I4,2_I4/),i))
         integer_array((4_I4*i-3_I4):(4_I4*i-1_I4):2_I4)=&
            & elemental_nonpointer_fun((/(2_I4*i-1_I4),(2_I4*i)/))
         integer_array((4_I4*i-2_I4):(4_I4*i):2_I4)=&
            & -elemental_nonpointer_fun((/(2_I4*i-1_I4),(2_I4*i)/))
      ELSEWHERE
         integer_array((4_I4*i-3_I4):(4_I4*i-1_I4):2_I4)=&
            & elemental_nonpointer_fun((/0_I4,0_I4/))
         integer_array((4_I4*i-2_I4):(4_I4*i):2_I4)=&
            & -elemental_nonpointer_fun((/0_I4,0_I4/))
      END WHERE
   END FORALL

   integer_array=0_I4

   DO i=1_I4,3_I4
      IF (logical_array(1_I4,i)) THEN
         p_vect(2_I4*i-1_I4)=elemental_pointer_fun(2_I4*i-1_I4)
      ELSE
         p_vect(2_I4*i-1_I4)=elemental_pointer_fun(0_I4)
      END IF
      IF (logical_array(2_I4,i)) THEN
         p_vect(2_I4*i)=elemental_pointer_fun(2_I4*i)
      ELSE
         p_vect(2_I4*i)=elemental_pointer_fun(0_I4)
      END IF
   END DO

   integer_array=0_I4

   DO i=1_I4,3_I4
      WHERE(logical_array((/1_I4,2_I4/),i))
         p_vect((2_I4*i-1_I4):(2_I4*i))=&
            & elemental_pointer_fun((/(2_I4*i-1_I4),(2_I4*i)/))
      ELSEWHERE
         p_vect((2_I4*i-1_I4):(2_I4*i))=&
            & elemental_pointer_fun((/0_I4,0_I4/))
      END WHERE
   END DO

   integer_array=0_I4

   FORALL (i=1_I4:3_I4:1_I4)
      WHERE(logical_array((/1_I4,2_I4/),i))
         p_vect((2_I4*i-1_I4):(2_I4*i))=&
            & elemental_pointer_fun((/(2_I4*i-1_I4),(2_I4*i)/))
      ELSEWHERE
         p_vect((2_I4*i-1_I4):(2_I4*i))=&
            & elemental_pointer_fun((/0_I4,0_I4/))
      END WHERE
   END FORALL

9999 continue
 print *,'pass'

CONTAINS

   PURE TYPE(pointer_vector_I4) ELEMENTAL FUNCTION &
      & elemental_pointer_fun(index) RESULT(ans)

      USE kind_mod, ONLY :  I4
      USE pointer_mod, ONLY : pointer_vector_I4, ASSIGNMENT(=)

      IMPLICIT NONE

      INTEGER(I4), INTENT(IN) :: index

      ALLOCATE(ans%vect(2_I4))
      ans%vect=(/index,-index/)

   END FUNCTION elemental_pointer_fun

   PURE INTEGER(I4) ELEMENTAL FUNCTION &
      & elemental_nonpointer_fun(index) RESULT(ans)

      USE kind_mod, ONLY : I4

      IMPLICIT NONE

      INTEGER(I4), INTENT(IN) :: index

      ans=index

   END FUNCTION elemental_nonpointer_fun

END PROGRAM MAIN

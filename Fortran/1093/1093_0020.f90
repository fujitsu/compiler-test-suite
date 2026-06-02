print *,'pass'
end

MODULE dbcsr_dist_operations
type dbcsr_mp_obj
integer :: aa
end type
type array_i1d_obj
      INTEGER                   :: col_dist_blocka
      INTEGER        :: row_dist_blocka
      INTEGER :: local_colsa,local_rowsa
end type
type array_i1d_obj_AAAA
 type(array_i1d_obj) :: col_dist_block,row_dist_block,local_cols,local_rows
end type
type dbcsr_distribution_obj
   TYPE(array_i1d_obj_AAAA), POINTER  :: d => Null()
end type

   INTERFACE dbcsr_distribution_new
      MODULE PROCEDURE dbcsr_distribution_new_template
      MODULE PROCEDURE dbcsr_distribution_new_obj
      MODULE PROCEDURE dbcsr_distribution_new_low
   END INTERFACE dbcsr_distribution_new

CONTAINS
   SUBROUTINE dbcsr_distribution_new_template(dist, template, group, pgrid, row_dist, col_dist, &
                                              reuse_arrays)
      TYPE(dbcsr_distribution_obj), INTENT(OUT)         :: dist
      TYPE(dbcsr_distribution_obj), INTENT(IN), &
         OPTIONAL                                        :: template
      INTEGER, INTENT(IN), OPTIONAL                      :: group
      INTEGER, DIMENSION(:, :), OPTIONAL, POINTER        :: pgrid
      INTEGER, DIMENSION(:), INTENT(IN), POINTER, CONTIGUOUS :: row_dist, col_dist
      LOGICAL, INTENT(IN), OPTIONAL                      :: reuse_arrays
   END SUBROUTINE dbcsr_distribution_new_template
  SUBROUTINE dbcsr_distribution_new_obj(dist, mp_env, row_dist_block, col_dist_block, &
                                         local_rows, local_cols)
      TYPE(dbcsr_distribution_obj), INTENT(OUT)          :: dist
      TYPE(dbcsr_mp_obj), INTENT(IN)                     :: mp_env
      TYPE(array_i1d_obj), INTENT(IN)                    :: row_dist_block, col_dist_block
      TYPE(array_i1d_obj), INTENT(IN), OPTIONAL          :: local_rows, local_cols
   END SUBROUTINE dbcsr_distribution_new_obj

   SUBROUTINE dbcsr_distribution_new_low(dist, mp_env, row_dist_block, col_dist_block, &
                                         local_rows, local_cols, &
                                         reuse_arrays)
      TYPE(dbcsr_distribution_obj), INTENT(OUT)          :: dist
      TYPE(dbcsr_mp_obj), INTENT(IN)                     :: mp_env
      INTEGER, DIMENSION(:), INTENT(IN), POINTER, CONTIGUOUS :: row_dist_block, col_dist_block
      INTEGER, DIMENSION(:), INTENT(IN), OPTIONAL, &
         POINTER, CONTIGUOUS                             :: local_rows, local_cols
      LOGICAL, OPTIONAL                                  :: reuse_arrays
      CHARACTER(len=*), PARAMETER :: routineN = 'dbcsr_distribution_new'
      INTEGER                                            :: handle, i, lcmv, mypcoor, npcols, &
                                                            nprows, seq
      INTEGER, DIMENSION(:), POINTER, CONTIGUOUS         :: col_dist_tmp, row_dist_tmp
   end SUBROUTINE

   SUBROUTINE dbcsr_transpose_distribution(dist_tr, dist_normal)

      TYPE(dbcsr_distribution_obj), INTENT(OUT)          :: dist_tr
         !! transposed distribution
      TYPE(dbcsr_distribution_obj), INTENT(IN)           :: dist_normal
         !! current distribution

      TYPE(dbcsr_mp_obj)                                 :: mp_env_tr

      CALL dbcsr_distribution_new(dist_tr, mp_env_tr, &
                                  dist_normal%d%col_dist_block, &
                                  dist_normal%d%row_dist_block, &
                                  dist_normal%d%local_cols, &
                                  dist_normal%d%local_rows)
   END SUBROUTINE dbcsr_transpose_distribution
end

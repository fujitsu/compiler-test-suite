        MODULE mod01
            IMPLICIT NONE
            PRIVATE

            PUBLIC :: type001, eri_type_eri_element_func
        7    TYPE eri_gpw_type
        8       LOGICAL                       :: redo_poisson
        9       REAL(KIND=8)                 :: cutoff
       10       REAL(KIND=8)                 :: rel_cutoff
       11       REAL(KIND=8)                 :: eps_grid
       12       INTEGER                       :: print_level
       13       LOGICAL                       :: store_wfn
       14    END TYPE eri_gpw_type

       16    TYPE eri_type
       17       INTEGER                       :: method
       18       INTEGER                       :: OPERATOR
       19       REAL(KIND=8)                 :: operator_parameter
       20       INTEGER, DIMENSION(3)         :: periodicity
       21       REAL(KIND=8)                 :: cutoff_radius
       22       REAL(KIND=8)                 :: eps_integral
       23       integer            :: eri_gpw
       24       integer, &
                DIMENSION(:), POINTER      :: eri2 => NULL()
       26       INTEGER                       :: norb

       28    CONTAINS
       29       PROCEDURE :: eri_foreach => eri_type_eri_foreach
       30    END TYPE eri_type

       32    TYPE, ABSTRACT :: eri_type_eri_element_func
       33    CONTAINS
       34       PROCEDURE(eri_type_eri_element_func_interface), DEFERRED :: func
       35    END TYPE eri_type_eri_element_func

       37    TYPE type001
       38       INTEGER                       :: nactive
       39       INTEGER                       :: ninactive
       40       INTEGER, DIMENSION(2)         :: ninspin
       41       INTEGER, DIMENSION(2)         :: nelectrons
       42       INTEGER                       :: multiplicity
       43       INTEGER                       :: nspins
       44       LOGICAL                       :: molecule
       45       INTEGER                       :: model
       46       REAL(KIND=8)                 :: energy_total
       47       REAL(KIND=8)                 :: energy_ref
       48       REAL(KIND=8)                 :: energy_inactive
       49       REAL(KIND=8)                 :: energy_active
       50       TYPE(eri_type)                :: eri
       51    END TYPE type001

       53    ABSTRACT INTERFACE
       54       LOGICAL FUNCTION eri_type_eri_element_func_interface(this, i, j,k, l, val)
       55          IMPORT :: eri_type_eri_element_func
       56          CLASS(eri_type_eri_element_func), INTENT(inout) :: this
       57          INTEGER, INTENT(in)                             :: i, j, k, l
       58          REAL(KIND=8), INTENT(in)                       :: val
       59       END FUNCTION eri_type_eri_element_func_interface
       60    END INTERFACE

       62 CONTAINS

       64    SUBROUTINE eri_type_eri_foreach(this, nspin, fobj)
       65       CLASS(eri_type), INTENT(in)              :: this
       66       CLASS(eri_type_eri_element_func)         :: fobj
       67       integer :: nspin

       69    END SUBROUTINE eri_type_eri_foreach

       71 END MODULE mod01

       75 MODULE mod002

       77    USE mod01,           ONLY: type001,&
                                                      eri_type_eri_element_func

       80    IMPLICIT NONE
       81    PRIVATE

       83    TYPE, EXTENDS(eri_type_eri_element_func) :: eri_fcidump_print
       84       INTEGER :: unit_nr
       85    CONTAINS
       86       PROCEDURE :: func => eri_fcidump_print_func
       87    END TYPE

       89 CONTAINS

       91    LOGICAL FUNCTION eri_fcidump_print_func(this, i, j, k, l, val) RESULT(cont)
       92       CLASS(eri_fcidump_print), INTENT(inout) :: this
       93       INTEGER, INTENT(in)                     :: i, j, k, l
       94       REAL(KIND=8), INTENT(in)               :: val

       97       IF (this%unit_nr > 0) THEN
       98          WRITE (this%unit_nr, "(ES23.16,4I4)") val, i, j, k, l
       99       END IF

      101       cont = .TRUE.
      102    END FUNCTION eri_fcidump_print_func

      104    SUBROUTINE fcidump(active_space_env)

      106       TYPE(type001), POINTER :: active_space_env

      108       CALL active_space_env%eri%eri_foreach(1, eri_fcidump_print(1))

      110    END SUBROUTINE fcidump
      111 END MODULE mod002
print *,'pass'
end

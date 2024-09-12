      print *,'pass'
      contains
        subroutine sub()
          type aaa
            integer(4)      ::i4
          end type aaa
        type(aaa),save,allocatable::st(:)
  !$omp threadprivate(st)

  !$omp parallel

  !$omp single

  !$omp end single copyprivate(st)

  !$omp end parallel
        end subroutine sub
      end

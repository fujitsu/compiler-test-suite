      module m
      contains
        subroutine  module_pud
	print *,' OK 1 '
	return 
        entry       module_sed
	print *,' OK 2 '
        end subroutine 
        subroutine  sub1
          call sub2(module_pud,module_sed)
        end subroutine
        subroutine  sub2(dummy_proc1,dummy_proc2)
          external dummy_proc1,dummy_proc2
          call dummy_proc1
          call dummy_proc2
        end subroutine
      end module m
      use m
      call sub1
      end

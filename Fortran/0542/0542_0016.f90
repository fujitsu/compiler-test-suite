           class(*),allocatable::a
        
          allocate(integer(kind=2)::a)
        
           call sub(a)
        
           contains
           subroutine sub(a)
           class (*),target::a
          class (*),pointer::b
          logical::f
       
          b => a
         f=associated(b, a)
          if (.not.f) print *,101
          print *,"pass"
          end
          end



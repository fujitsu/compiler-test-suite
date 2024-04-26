    complex(2),allocatable::a
         allocate(a)
           a=1
           call sub(a)
           print *,'pass'
         contains
           subroutine sub(a)
             complex(2)::a
             if(a/=(1.0_2,0.0_2)) print *,'err'
            end subroutine
            end

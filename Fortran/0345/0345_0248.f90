      subroutine zz
         print *,'#'
      end subroutine
      
      module xx
      contains
       subroutine sub()
         call ent1()
       end subroutine
       subroutine sub2()
         print *,''
        entry ent1()
         call zz()
         print *,'##'
       end subroutine
      end
      
      program main
       use xx
        call sub
        print *,'pass'
      end

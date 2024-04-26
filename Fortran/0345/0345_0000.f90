           call ss
           print *,'pass'
         end
      
        module mod
         integer::ijk=777
        contains
         subroutine sub
           if (ijk/=777) print *,'error ',ijk
         end subroutine
        end
      
        subroutine ss
         use mod
          call sub
          if (ijk/=777) print *,'error ',ijk
        end

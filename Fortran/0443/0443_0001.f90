module m
  interface
     module subroutine sub
     end subroutine
  end interface
end module m

submodule(m) smod4
  interface
    module subroutine sub5
      interface
          subroutine sub4
          interface
             subroutine ss()
             end subroutine
          end interface
         end subroutine
      end interface
    end
  end interface
  contains
   module procedure sub
     call sub5
   end
end

submodule(m:smod4) smod5
contains
     module subroutine sub5
  interface
     subroutine sub4
      interface
         subroutine ss()
         end subroutine
      end interface
     end subroutine
  end interface
end
end

use m
print *,'pass'
end

     subroutine sub4
      interface
         subroutine ss()
         end subroutine
      end interface
     end subroutine

         subroutine ss()
         end subroutine

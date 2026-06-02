module m1
  interface
     module subroutine s1(sp)
       procedure(ds), pointer :: sp 
        interface
          subroutine ds
          end subroutine 
        end interface
     end subroutine 
  end interface
end 

use m1
        interface
          subroutine ds
          end subroutine 
        end interface
 procedure(ds), pointer :: p 
p=>ds
call s1(p)
rewind 2
read(2,*) n
if (n/=1)print *,1001
print *,'sngg822o : pass'
end
submodule (m1) smod
contains
 module  procedure  s1
       call sp
 end 
end
     subroutine ds()
       write(2,*)1
     end subroutine 

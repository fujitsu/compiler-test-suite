          module m0
            integer::k
           interface
           module subroutine s()
           end
          end interface
         end
        
        submodule (m0) ss
         interface
          module subroutine ss1(i)
          end
          end interface
         contains
           module subroutine ss1(i)
if (i/=1)print *,201
write(1,*) 2
           end
          module subroutine s()
write(1,*) 1
call ss1(1)
          end
         end
use m0
call s
rewind 1
read(1,*) k;if(k/=1) print *,1001
read(1,*) k;if(k/=2) print *,1002
print *,'pass'
end

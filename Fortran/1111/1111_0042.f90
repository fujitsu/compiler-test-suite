         module m0
         procedure(sub1)::x
           interface g
             procedure::x
           end interface
           interface 
              subroutine sub1(c)
              character(*)::c
              end subroutine sub1
           end interface
 private
 public::g
         end 
         use m0
call g   ('1')
        print *,'sngg894o : pass'
end

           subroutine x   (c) 
              character(*)::c
if (len(c)/=1) print *,1001
if (c/='1') print *,1001
           end subroutine

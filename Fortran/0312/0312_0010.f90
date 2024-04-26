      subroutine sub3(n)
      integer a(5),b(5),c(5),d(5),check1
      pointer (pb,b),(pc,c)
      equivalence (pb,pc)
      pb=loc(a)
      b=100
      write(6,*) b(1)
      return
      end
        
        call sub3(10)
        end

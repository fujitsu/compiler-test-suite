
      module mod05
      common /com5/i,j
      end 

      common /com5/i,j,n,m
      data i,j,n,m/1,2,3,4/
      call sub()
      end 

      subroutine sub()
      common /com5/i,j,n
      if (i.ne.1 .or. j.ne.2 .or. n.ne.3) then
        print *,'??? ng ???'
      else
        print *,'*** ok ***'
      endif 
      end

       interface gennterface
         subroutine sub
         end
       end interface
       type gen
         procedure(sub),nopass,pointer:: e1
       end type

       interface gen
        function s1( d )
        end
      end interface
      type(gen):: z
      procedure(sub),pointer:: p 
      p=> sub
      z=gen( p )
      call z%e1
      print *,' pass'
      end

      subroutine sub
      print *,'called : sub'
      end
      function s1( d )
      print *,'called : s1'
      s1=1
      end

      complex(kind=4)::a/(0.0,0.0)/,b/(4.0,3.0)/

      call sub(a,b)
      if(real(a) .ne. 0./4. .or.
     #   imag(a) .ne. 0./3. ) then
         write(6,*) '*** ng ***'
         write(6,*) a
      else
         write(6,*) '*** ok ***'
      endif
      stop
      end

      subroutine sub(a,b)
      complex(kind=4)::a,b
      a=0./b
      end

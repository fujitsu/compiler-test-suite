      complex(kind=4)::a/(0.0,0.0)/,b/(4.0,3.0)/
      real   (kind=4)::c/2.0/

      call sub(a,b,c)
      if(real(a) .ne. 4./2. .or.
     #   imag(a) .ne. 3./2. ) then
         write(6,*) '*** ng ***'
         write(6,*) a
      else
         write(6,*) '*** ok ***'
      endif
      stop
      end

      subroutine sub(a,b,c)
      complex(kind=4)::a,b
      real   (kind=4)::c
      a=b/c
      end

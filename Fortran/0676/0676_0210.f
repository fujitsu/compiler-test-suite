      complex(kind=8),parameter::c=(1.0,0.0)
      complex(kind=8)          ::a,b/(1.0,-1.0)/
      integer(kind=4)          ::check
      do i=1,10
         a=b/c
      enddo
      if(check(a) /= 0) then
         write(6,*) '*** ng ***'
      else
         write(6,*) '*** ok ***'
      endif
      stop
      end

      integer(kind=4) function check(a) result(res)
      complex(kind=8)          ::a
      complex(kind=8),parameter::t=(0.1e+1,-0.1e+1)
      res=0
      if(abs((real(a)-real(t))/real(t)) .gt. 1.e-8 .or.
     &   abs((imag(a)-imag(t))/imag(t)) .gt. 1.e-8 ) then
         res=1
         write(6,*) a
      endif
      end
      

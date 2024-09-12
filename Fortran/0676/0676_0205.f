      program main
      complex(kind=4)::c_a,c_b,c_c,c_d

      c_a=cmplx(cos(0.0)*2,cos(0.0)*2)
      c_b=cmplx(cos(0.0)+7,cos(0.0)*0)
      c_c=cmplx(cos(0.0)*4,cos(0.0)*4)

      do i=1,10
         c_d=c_c/c_b/c_a
      end do
      if ((abs(real(c_d) - (1./4))  > 0.00001) .or.
     #    (abs(imag(c_d) - (1.-1.)) > 0.00001)) then
         write(6,*) '*** ng ***'
         write(6,*) c_d
      else
         write(6,*) '*** ok ***'
      endif
      stop
      end


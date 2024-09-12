      program main
      real   (kind=4),parameter::pi=3.141592654
      complex(kind=4)::c_a,c_d

      c_a=cmplx(cos(0.0)*4,cos(0.0)*2)

      do i=1,10
         c_d=c_a/ccos(cmplx(pi,0.))
      end do
      if(real(c_d) .ne. -4. .or.
     #   imag(c_d) .ne. -2. ) then
         write(6,*) '*** ng ***'
         write(6,*)c_d
      else
         write(6,*) '*** ok ***'
      endif
      stop
      end

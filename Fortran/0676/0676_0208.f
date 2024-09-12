      complex(kind=4)::c08_a,c08_b
      complex(kind=8)::c16_c,c16_d
      integer(kind=4)::error/0/
      
      c08_a = cmplx(cos(0.0)*   1 + 0,sin(0.0)+ 2)
      c08_b = cmplx(cos(0.0)*(- 4)+ 9,sin(0.0)+ 6)
      c16_c = cmplx(cos(0.0)*(-13)+10,sin(0.0)+ 4)
      c16_d = cmplx(cos(0.0)*   4 + 5,sin(0.0)+10)

      c08_a = c08_b / c16_c
      call checkc(c08_a,1,error)

      c08_b = c16_c / c08_a
      call checkc(c08_b,2,error)

      c16_c = c08_a / c16_d
      call checkd(c16_c,1,error)

      c16_d = c08_b / c16_c
      call checkd(c16_d,2,error)

      c08_a = c16_c / c16_d
      call checkc(c08_a,3,error)

      c16_c = c08_a / c08_b
      call checkd(c16_c,3,error)

      if(error /= 0) then
         write(6,*) '*** ng ***'
      else
         write(6,*) '*** ok ***'
      endif
      stop
      end

      subroutine checkc(c,n,error)
      complex(kind=4)::c
      integer(kind=4)::n,error
      complex(kind=4)::c08_t(3)
      data c08_t/( 0.360000014   ,-1.51999998)
     #          ,(-2.93442631    ,-1.27868855)
     #          ,(-2.14677857e-04,-4.20601852e-03)/

      if(abs((real(c)-real(c08_t(n))))
     #               /real(c08_t(n)) .gt. 1.0e-8 .or.
     #   abs((imag(c)-imag(c08_t(n))))
     #               /imag(c08_t(n)) .gt. 1.0e-8 ) then
         error = 1
         write(6,*)'c08-',n,':',c
      endif
      end

      subroutine checkd(d,n,error)
      complex(kind=8)::d
      integer(kind=4)::n,error
      complex(kind=8)::c16_t(3)
      data c16_t/(- 6.607734630121051e-02,- 9.546961310160093e-02)
     #          ,( 23.43912988825431     ,-14.51384121121732)
     #          ,(  5.863948608748615e-04,  1.177811995148659e-03)/

      if(abs((real(d)-real(c16_t(n))))
     #               /real(c16_t(n)) .gt. 1.0e-6 .or.
     #   abs((imag(d)-imag(c16_t(n))))
     #               /imag(c16_t(n)) .gt. 1.0e-6 ) then
         error = 1
         if(n .eq. 3) then
           write(6,*)
     #     'error:(5.863948026672006e-04,1.177811878733337e-03)'
        endif
        write(6,*)'c16-',n,':',d
      endif
      end

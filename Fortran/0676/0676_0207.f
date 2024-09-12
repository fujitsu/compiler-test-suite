      program main
      integer(kind=4)::error/0/
      real   (kind=4)::r_4a(2,2)
      complex(kind=4)::c_8a(2,2)
      complex(kind=8)::c_16a(2,2),c_16b(2,2),func

      r_4a(:,1) = 16.
      r_4a(:,2) = 32.
      c_8a = cmplx(cos(0.0)+3 ,5)
      call sub(c_16a ,r_4a ,c_8a)

      c_16b = c_16a / func(c_16a(1,2))

      call check(c_16b,error)
      if(error/=0) then
         write(6,*) '*** ng ***'
      else
         write(6,*) '*** ok ***'
      endif
      stop
      end

      subroutine sub(c_16a ,r_4a ,c_8a)
      real   (kind=4)::r_4a(2,2)
      complex(kind=4)::c_8a(2,2)
      complex(kind=8)::c_16a(2,2)

      c_16a = c_8a / r_4a

      return
      end

      complex(kind=8) function func(c_16a)
      complex(kind=8)::c_16a

      func = c_16a

      return
      end

      subroutine check(d,error)
      complex(kind=8)::d(2,2)
      integer(kind=4)::error
      complex(kind=8)::t(2,2)
      data t/(0.2e+1,0.0e+0),(0.2e+1,0.0e+0)
     #      ,(0.1e+1,0.0e+0),(0.1e+1,0.0e+0)
     #      /

      do j=1,2
        do i=1,2
          if(abs(real(d(i,j))-real(t(i,j))) .gt. 1.e-15 .or.
     #       abs(imag(d(i,j))-imag(t(i,j))) .gt. 1.e-15 ) then
             error=1
             write(6,*) d
          endif
        enddo
      enddo
      end


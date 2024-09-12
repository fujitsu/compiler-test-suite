      program main
      type str
        sequence
        complex(kind=4)::c8_a(3,3),c8_b(3,3)
      end type
      
      real   (kind=4)::r4_a(3,3)/1.,3,1. ,2.,4.,2. ,3.,5.,3./
      complex(kind=4)::c8_a(3,3)
      type   (str)   ::z
      integer(kind=4)::error/0/

      do l = 1, 3
         do i = 1, 3
            z%c8_a(i,l) = cmplx(i*3,l*4)
            z%c8_b(l,i) = cmplx(l*6,i*2)
         end do
      end do

      c8_a = z%c8_a / z%c8_b
      call check(c8_a,1,error)

      c8_a = z%c8_a / r4_a
      call check(c8_a,2,error)

      c8_a = r4_a / z%c8_a / c8_a
      call check(c8_a,3,error)

      if(error/=0) then
         write(6,*) '*** ng ***'
      else
         write(6,*) '*** ok ***'
      endif
      stop
      end

      subroutine check(c,n,res)
      complex(kind=4)::c(3,3)
      integer(kind=4)::n,res,error
      complex(kind=4)::t(3,3,3)
      data t/(0.650000036e+00,0.450000018e+00)
     #      ,(0.540540516e+00,0.243243247e+00)
     #      ,(0.518292725e+00,0.164634153e+00)
     #      ,(0.961538494e+00,0.692307651e+00)
     #      ,(0.650000036e+00,0.450000018e+00)
     #      ,(0.570588231e+00,0.317647040e+00)
     #      ,(0.125000000e+01,0.750000000e+00)
     #      ,(0.800000012e+00,0.600000024e+00)
     #      ,(0.649999976e+00,0.449999988e+00)

     #      ,(0.300000000e+01,0.400000000e+01)
     #      ,(0.200000000e+01,0.133333337e+01)
     #      ,(0.900000000e+01,0.400000000e+01)
     #      ,(0.150000000e+01,0.400000000e+01)
     #      ,(0.150000000e+01,0.200000000e+01)
     #      ,(0.450000000e+01,0.400000000e+01)
     #      ,(0.100000000e+01,0.400000000e+01)
     #      ,(0.120000005e+01,0.240000010e+01)
     #      ,(0.300000000e+01,0.400000000e+01)

     #      ,(-0.111999996e-01,-0.383999981e-01)
     #      ,( 0.665680468e-01,-0.159763306e+00)
     #      ,( 0.690827891e-02,-0.765224826e-02)
     #      ,(-0.412835404e-01,-0.360292718e-01)
     #      ,(-0.447999984e-01,-0.153599992e+00)
     #      ,( 0.323424465e-02,-0.273959599e-01)
     #      ,(-0.519031137e-01,-0.276816618e-01)
     #      ,(-0.833333358e-01,-0.111111112e+00)
     #      ,(-0.111999996e-01,-0.383999981e-01)
     #      /

      error=0
      do j=1,3
         do i=1,3
            if(abs((real(c(i,j))-real(t(i,j,n)))
     #                          /real(t(i,j,n))) .gt. 1.e-6 .or.
     #         abs((imag(c(i,j))-imag(t(i,j,n)))
     #                          /imag(t(i,j,n))) .gt. 1.e-6) then
               error=1
            endif
         enddo
      enddo
      if(error /= 0) then
         write(6,*) n,'th :',c
      endif
      res = res + error
      end
      program main
      integer(kind=4)::error/0/

      call sub1(error)
      call sub2(error)
      call sub3(error)

      if(error/=0) then
         write(6,*)'*** ng ***'
      else
         write(6,*)'*** ok ***'
      endif
      stop
      end

      subroutine sub1(error)
      integer(kind=4)::error,check1
      complex(kind=4)::c8_a,c8_b,c8_c,c8_d,c8_e,c8_f,func_f
      real   (kind=4)::r4_a

      c8_a = cmplx(cos(0.0)*4,cos(0.0)*4)
      c8_b = cmplx(cos(0.0)+3,cos(0.0)-2)
      c8_c = cmplx(cos(0.0)*2,0)
      r4_a = real(cos(0.0)*3.)
      c8_d = c8_a / r4_a
      c8_e = c8_b / c8_c
      c8_f = func_f(3.,4.) / ccos(cmplx(5,4))
      error = error + check1(c8_d,c8_e,c8_f)
      return
      end

      complex(kind=4) function func_f(r,i)
      real   (kind=4)::r,i

      func_f = cmplx(r,i)
      return
      end

      subroutine sub2(error)
      integer(kind=4)::error,check2
      complex(kind=8)::c16_a,c16_b
      integer(kind=4)::i4_a/9/,i4_b/2/
      
      c16_a=cmplx(i4_a,i4_b)
      c16_b = c16_a / i4_b
      error = error + check2(c16_b)
      return
      end

      subroutine sub3(error)
      integer(kind=4)::error,check3,check4
      complex(kind=4)::c8_a(10),c8_b(10),c8_c(10)
      real   (kind=4)::r4_a(10)/1,2,3,4,5,6,7,8,9,10/

      c8_a = cmplx(0.0,0.0)
      c8_b = cmplx(3.0,5.0)
      c8_c = cmplx(8.0,2.0)

      c8_b = c8_b * c8_c
      c8_b = c8_b / c8_c
      error = error + check3(c8_b)

      c8_a = ccos(cmplx(3.0,2.0)) / r4_a
      error = error + check4(c8_a)
      return
      end
 
      integer(kind=4) function check1(a,b,c) result(res)
      complex(kind=4)::a,b,c
      complex(kind=4),parameter::ta=(0.133333337e+01, 0.133333337e+01)
     &                          ,tb=(0.200000000e+01,-0.500000000e+00)
     &                          ,tc=(0.171739191e+00,-0.638028458e-01)
      res=0
      if(abs((real(a)-real(ta))/real(ta)) .gt. 1.e-6 .or.
     &   abs((imag(a)-imag(ta))/imag(ta)) .gt. 1.e-6 .or.
     &   abs((real(b)-real(tb))/real(tb)) .gt. 1.e-6 .or.
     &   abs((imag(b)-imag(tb))/imag(tb)) .gt. 1.e-6 .or.
     &   abs((real(c)-real(tc))/real(tc)) .gt. 1.e-6 .or.
     &   abs((imag(c)-imag(tc))/imag(tc)) .gt. 1.e-6 ) then
         res=1
         write(6,*)'error at 1:'
         write(6,*) a, b, c
         write(6,*)ta,tb,tc
      endif
      end

      integer(kind=4) function check2(a) result(res)
      complex(kind=8)::a
      complex(kind=8),parameter::
     &                ta=(4.500000000000000,1.000000000000000)
      res=0
      if(abs((real(a)-real(ta))/real(ta)) .gt. 1.e-15 .or.
     &   abs((imag(a)-imag(ta))/imag(ta)) .gt. 1.e-15 ) then
         res=1
         write(6,*)'error at 2:'
         write(6,*) a
         write(6,*)ta
      endif
      end

      integer(kind=4) function check3(a) result(res)
      complex(kind=4)::a(10)
      complex(kind=4),parameter::ta=(0.300000000e+01,0.500000000e+01)
      res=0
      do i=1,10
         if(abs((real(a(i))-real(ta))/real(ta)) .gt. 1.e-6 .or.
     &      abs((imag(a(i))-imag(ta))/imag(ta)) .gt. 1.e-6 ) then
            res=1
         endif
      enddo
      if(res/=0) then
         write(6,*)'error at 3:'
         write(6,*) a
         write(6,*)ta
      endif
      end

      integer(kind=4) function check4(a) result(res)
      complex(kind=4)::a(10)
      complex(kind=4)::ta(10)
      data ta/(-0.372454548e+01,-0.511822581e+00)
     &       ,(-0.186227274e+01,-0.255911291e+00)
     &       ,(-0.124151516e+01,-0.170607522e+00)
     &       ,(-0.931136370e+00,-0.127955645e+00)
     &       ,(-0.744909108e+00,-0.102364518e+00)
     &       ,(-0.620757580e+00,-0.853037611e-01)
     &       ,(-0.532077909e+00,-0.731175095e-01)
     &       ,(-0.465568185e+00,-0.639778227e-01)
     &       ,(-0.413838387e+00,-0.568691753e-01)
     &       ,(-0.372454554e+00,-0.511822589e-01)
     &       /
      res=0
      do i=1,10
         if(abs((real(a(i))-real(ta(i)))/real(ta(i))) .gt. 1.e-6 .or.
     &      abs((imag(a(i))-imag(ta(i)))/imag(ta(i))) .gt. 1.e-6 ) then
            res=1
         endif
      enddo
      if(res/=0) then
         write(6,*)'error at 4:'
         write(6,*) a
         write(6,*)ta 
      endif
      end

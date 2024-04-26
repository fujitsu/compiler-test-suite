      program main
      integer           ::n1
      real*8              r8_array_1(10),r8_array_2(10)
      data r8_array_1/3.3,5.2,6.5,1.1,6.4,3.7,0.2,3.1,4.2,2.4/

      n1 = 3*int(cosh(0.0))
      r8_array_2(n1+1:10) = r8_array_1(n1+1:10)
      write(6,*) '*** OK ***'
      stop
      end

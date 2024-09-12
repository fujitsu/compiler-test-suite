      program main
      real*8    r8_array_2(10)
      real*8    r8_dvt_10(10)
      integer ::i,n1
      data r8_array_2/1,2,3,4,5,6,7,8,9,10/
      data r8_dvt_10/10*-1/

      do n1=1,5
         do i=1,4
            r8_dvt_10(i)       = r8_array_2(i+n1+1)-r8_array_2(n1+3)
         enddo
         do i=1,4
            r8_array_2(i+n1-1) = r8_dvt_10(i)
         enddo
      enddo

      print *,r8_dvt_10
      print *,r8_array_2
      end

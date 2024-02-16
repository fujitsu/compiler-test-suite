      program main
      real*8              r8_array_1(10),r8_array_2(10)
      real*8,allocatable::r8_array_3(:,:,:,:)

      data r8_array_1/3.3,5.2,6.5,1.1,6.4,3.7,0.2,3.1,4.2,2.4/

      real*8 r8_dvt_10(10),result_vector(10),result_scalar(10)
      logical                             no_good/.false./

      integer i,n1,n2,n3


      n1 = 3*int(cosh(0.0))
      r8_array_2(1:n1)    = r8_array_1(1:n1)
      r8_array_2(n1+1:10) = r8_array_1(n1+1:10)
      r8_array_2(n1-2:7)  = r8_array_2(n1:9)
      r8_array_2(n1:9)    = r8_array_2(9)

      n2 = 3*int(cosh(0.0))
      do n1 = 1,5
         r8_array_2(n1:n1+3) = r8_array_2(n1+2:n1+5)-r8_array_2(n1+3)
         r8_array_2(n1+n2-3:n1+n2) = r8_array_2(n1)
      enddo

      n1 = 10*int(gamma(2.0))                  !n1 <- 10
      n2 = n1/2                                !n2 <- 5
      allocate (r8_array_3(n1,n2+n2,n2*2,10))  !r8_array_3(10,10,10,10)
      r8_array_3 = 1.0

      do n1=1,10
         do n2=1,10
            do n3=1,10
               r8_array_3(n3,n2,:,n1) = r8_array_2*(n1-n2)/real(n3)
               r8_array_3(:,n3,n1,n2) = r8_array_3(n3,:,n2,n1)
            enddo
         enddo
      enddo

      n1=3*int(cos(0.0))
      r8_array_3(n1,n1+1:n1+5,n1+2,5) = r8_array_3(1:5,1,5,5)
      r8_array_3(1,n1:n1+4,n1+2,5)    = r8_array_3(1,n1+3,n1+1:n1+5,5)

      result_vector = 0.0
      do n1=1,10
         do n2=1,10
            do n3=1,10
               result_vector = result_vector + r8_array_3(n1,:,n3,n2)
            enddo
         enddo
      enddo

      deallocate (r8_array_3)

      n1 = 3*int(cosh(0.0))
      do i=1,n1
         r8_array_2(i) = r8_array_1(i)
      enddo
      do i=1,10-n1
         r8_array_2(i+n1)   = r8_array_1(i+n1)
      enddo
      do i=1,10-n1
         r8_dvt_10(i)       = r8_array_2(i+n1-1)
      enddo
      do i=1,10-n1
         r8_array_2(i+n1-3) = r8_dvt_10(i)
      enddo
      do i=1,10-n1
         r8_dvt_10(i)       = r8_array_2(9)
      enddo
      do i=1,10-n1
         r8_array_2(i+n1-1) = r8_dvt_10(i)
      enddo

      n2 = 3*int(cosh(0.0))
      do n1=1,5
         do i=1,4
            r8_dvt_10(i)       = r8_array_2(i+n1+1)-r8_array_2(n1+3)
         enddo
         do i=1,4
            r8_array_2(i+n1-1) = r8_dvt_10(i)
         enddo
         do i=1,4
            r8_dvt_10(i)          = r8_array_2(n1)
         enddo
         do i=1,4
            r8_array_2(i+n1+n2-4) = r8_dvt_10(i)
         enddo
      enddo

      n1 = 10*int(gamma(2.0))                  !n1 <- 10
      n2 = n1/2                                !n2 <- 5
      allocate (r8_array_3(n1,n2+n2,n2*2,10))  !r8_array_3(10,10,10,10)
      r8_array_3 = 1.0

      do n1=1,10
         do n2=1,10
            do n3=1,10
               do i=1,10
                  r8_array_3(n3,n2,i,n1) = r8_array_2(i)
     &                                      *(n1-n2)/real(n3)
               enddo
               do i=1,10
                  r8_dvt_10(i)           = r8_array_3(n3,i,n2,n1)
               enddo
               do i=1,10
                  r8_array_3(i,n3,n1,n2) = r8_dvt_10(i)
               enddo
            enddo
         enddo
      enddo

      n1=3*int(cos(0.0))
      do i=1,5
         r8_dvt_10(i)               = r8_array_3(i,1,5,5)
      enddo
      do i=1,5
         r8_array_3(n1,i+n1,n1+2,5) = r8_dvt_10(i)
      enddo
      do i=1,5
         r8_dvt_10(i)                = r8_array_3(1,n1+3,i+n1,5)
      enddo
      do i=1,5
         r8_array_3(1,i+n1-1,n1+2,5) = r8_dvt_10(i)
      enddo

      do i=1,10
         result_scalar(i) = 0.0
      enddo
      do n1=1,10
         do n2=1,10
            do n3=1,10
               do i=1,10
                  result_scalar(i) = result_scalar(i)
     &                               + r8_array_3(n1,i,n3,n2)
               enddo
            enddo
         enddo
      enddo

      deallocate (r8_array_3)

      do i=1,10
         if ((result_vector(i) - result_scalar(i)) > 0.00001) then
            no_good = .true.
         endif
      enddo

      if (no_good) then
         write(6,*) '*** NG ***'
         write(6,*) '< VECTOR >  ',result_vector
         write(6,*) '< SCALAR >  ',result_scalar
      else
         write(6,*) '*** OK ***'
      endif

      stop
      end

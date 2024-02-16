      program main
      real*8              r8_array_1(10),r8_array_2(10)
      real*8              r8_array_3(10,10,10,10)
      real*8,allocatable::r8_array_4( :, :, :, :)

      data r8_array_1/3.3,5.2,6.5,1.1,6.4,3.7,0.2,3.1,4.2,2.4/

      real*8  r8_dvt_5_5(5,5)
      real*8  result_vector(10),result_scalar(10)
      logical no_good/.false./

      integer i,j,k,l,n1,n2,n3


      r8_array_2(1:5)  = r8_array_1(1:9:2) - r8_array_1(10:2:-2)
      r8_array_2(6:10) = r8_array_2(1:5:1) + r8_array_2(5:1:-1)
      r8_array_2(3:7)  = r8_array_2(4:8:1) * r8_array_2(7)

      do n1=1,10
         do n2=1,10
            do n3=1,10
               r8_array_3(n3,n2,:,n1) = r8_array_2*real(n1-n2)/real(n3)
            enddo
         enddo
      enddo
      r8_array_3(3,1:5,3,5:9) = r8_array_3(2:10:2,4,9,1:9:2)
     &                         +r8_array_3(3,1:5,1:9:2,8)

      n1 = 10*int(gamma(2.0))                  ! n1 <- 10
      n2 = n1/2                                ! n2 <- 5
      allocate (r8_array_4(n1,n2+n2,n2*2,10))  ! r8_array_4(10,10,10,1

      r8_array_3(1:5,1,5:9,5) = r8_array_3(1,1:5,9,5:9)
      r8_array_3(1,1,5:9,5:9) = r8_array_3(1,1:5,1:5,5)
      r8_array_4(:,10:1:-1,:,10:1:-1) = r8_array_3(10:1:-1,:,10:1:-1,:)

      result_vector = 0.0
      do n1=1,10
         do n2=1,10
            do n3=1,10
               result_vector = result_vector + r8_array_4(n1,:,n3,n2)
            enddo
         enddo
      enddo

      deallocate (r8_array_4)


      do i=1,5
         r8_array_2(i)    = r8_array_1(2*i-1) - r8_array_1(-2*i+12)
      enddo
      do i=1,5
         r8_array_2(i+5)  = r8_array_2(i)     + r8_array_2(-i+6)
      enddo
      do i=1,5
         r8_array_2(i+2)  = r8_array_2(i+3)   * r8_array_2(7)
      enddo

      do n1=1,10
         do n2=1,10
            do n3=1,10
               do i=1,10
                  r8_array_3(n3,n2,i,n1) = r8_array_2(i)
     &                                     *real(n1-n2)/real(n3)
               enddo
            enddo
         enddo
      enddo

      do j=1,5
         do i=1,5
            r8_array_3(3,i,3,j+4) = r8_array_3(2*i,4,9    ,2*j-1)
     &                             +r8_array_3(3  ,i,2*j-1,8    )
         enddo
      enddo

      n1 = 10*int(gamma(2.0))                  ! n1 <- 10
      n2 = n1/2                                ! n2 <- 5
      allocate (r8_array_4(n1,n2+n2,n2*2,10))  ! r8_array_4(10,10,10,1

      do j=1,5
         do i=1,5
            r8_array_3(i,1,j+4,5) = r8_array_3(1,i,9,j+4)
         enddo
      enddo
      do j=1,5
         do i=1,5
            r8_dvt_5_5(i,j)       = r8_array_3(1,i,j,5)
         enddo
      enddo
      do j=1,5
         do i=1,5
            r8_array_3(1,1,i+4,j+4) = r8_dvt_5_5(i,j)
         enddo
      enddo

      do l=1,10
         do k=1,10
            do j=1,10
               do i=1,10
                  r8_array_4(i,11-j,k,11-l) = r8_array_3(11-i,j,11-k,l)
               enddo
            enddo
         enddo
      enddo

      do i=1,10
         result_scalar(i) = 0.0
      enddo
      do n1=1,10
         do n2=1,10
            do n3=1,10
               do i=1,10
                  result_scalar(i) = result_scalar(i)
     &                               + r8_array_4(n1,i,n3,n2)
               enddo
            enddo
         enddo
      enddo

      deallocate (r8_array_4)


      do i=1,10
         if (result_vector(i) .ne. result_scalar(i)) then
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

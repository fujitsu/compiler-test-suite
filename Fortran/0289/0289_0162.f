      program         main

      real*8,dimension(10)                 ::r8_array_1
     &                                        /3.23,5.2,-6.5,-1.1,6.4,
     &                                         -3.7,0.2,-3.1,14.2,2.4/
      real*8,dimension(10,10,10,10)        ::r8_array_2
      real*8,dimension(10,10,10,10)        ::w_r8_array_2
      pointer (pr8_array_2 ,r8_array_2)
      real*8,allocatable,dimension(:,:,:,:)::r8_array_3


      real*8,dimension(5,5)           ::r8_dvt_5_5
      real*8,dimension(5,5)           ::wr8_dvt_5_5
      pointer (pr8_dvt_5_5 ,r8_dvt_5_5)
      real*8,dimension(4,10)          ::r8_dvt_4_10
      real*8,dimension(4,4,6)         ::r8_dvt_4_4_6
      real*8,allocatable,dimension(:,:,:)::wr8_dvt_4_4_6
      pointer (pr8_dvt_4_4_6 ,r8_dvt_4_4_6)
      real*8,dimension(5,10)          ::r8_dvt_5_10
      real*8,dimension(10)            ::result_vector,result_scalar
      real*8,allocatable,dimension(:) ::w_result_vector,w_result_scalar
      pointer (presult_vector,result_vector),
     *        (presult_scalar,result_scalar)
      logical                         ::no_good/.false./

      integer                      ::i,j,k,l,n1,n2,n3

      allocate (w_result_vector(10),w_result_scalar(10))
      presult_vector = loc (w_result_vector(1))
      presult_scalar  = loc (w_result_scalar(1))
      pr8_array_2 = loc (w_r8_array_2)

      pr8_dvt_5_5 = loc (wr8_dvt_5_5(1,1))

      allocate (wr8_dvt_4_4_6(4,4,6))
      pr8_dvt_4_4_6 = loc (wr8_dvt_4_4_6(1,1,1))

      do n1=1,10
         do n2=1,10
            do n3=1,10
               r8_array_2(n3,n2,n1,:) = r8_array_1*n1/real(n2) - n3
            enddo
         enddo
      enddo

      n1=3*int(cos(0.0))
      r8_array_2(n1:n1+4,n1+1:n1+5,n1+2,5) = r8_array_2(1:5,n1,1:5,5)
      r8_array_2(n1,n1+1,n1+2:n1+6,1:5) = r8_array_2(n1,5,n1+2,5)

      do n1=1,3
         do n2=n1+1,7
            r8_array_2(1:4,:,n2,1) = r8_array_2(1:3*n1+1:n1,n1,:,1)
            r8_array_2(n1:n1+3,1:3*n1+1:n1,n2,1:6)
     &                   = r8_array_2(n2:n2+3,2*n1+1,1:4,n1+1:n1+6)
         enddo
      enddo

      n1 = 10*int(gamma(2.0))
      n2 = n1/2
      allocate (r8_array_3(n1,n2+n2,n2*2,10))

      r8_array_3 = r8_array_2

      do n3=n2+1,n1
         r8_array_3(n2,1:5,1:10,n2) = r8_array_3(1:5,n3,n1,1:10)
     &                                +r8_array_3(4,5,10,4)
      enddo

      result_vector = 0.0
      do n1=1,10
         do n2=1,10
            do n3=1,10
               result_vector = result_vector + r8_array_3(n1,:,n3,n2)
            enddo
         enddo
      enddo

      deallocate (r8_array_3)

      do n1=1,10
         do n2=1,10
            do n3=1,10
               do i=1,10
                 r8_array_2(n3,n2,n1,i) = r8_array_1(i)*n1/real(n2)-n3
               enddo
            enddo
         enddo
      enddo

      n1 = 3*int(cosh(0.0))

      do j=1,5
         do i=1,5
            r8_dvt_5_5(i,j) = r8_array_2(i,n1,j,5)
         enddo
      enddo
      do j=1,5
         do i=1,5
            r8_array_2(i+n1-1,j+n1,n1+2,5) = r8_dvt_5_5(i,j)
         enddo
      enddo

      do j=1,5
         do i=1,5
            r8_dvt_5_5(i,j) = r8_array_2(n1,5,n1+2,5)
         enddo
      enddo
      do j=1,5
         do i=1,5
            r8_array_2(n1,n1+1,i+n1+1,j) = r8_dvt_5_5(i,j)
         enddo
      enddo

      do n1=1,3
         do n2=n1+1,7

            do j=1,10
               do i=1,4
                  r8_dvt_4_10(i,j) = r8_array_2(n1*i+1-n1,n1,j,1)
               enddo
            enddo
            do j=1,10
               do i=1,4
                  r8_array_2(i,j,n2,1) = r8_dvt_4_10(i,j)
               enddo
            enddo

            do k=1,6
               do j=1,4
                  do i=1,4
                     r8_dvt_4_4_6(i,j,k)
     &                 = r8_array_2(i+n2-1,2*n1+1,j,k+n1)
                  enddo
               enddo
            enddo
            do k=1,6
               do j=1,4
                  do i=1,4
                     r8_array_2(i+n1-1,n1*j+1-n1,n2,k)
     &                 = r8_dvt_4_4_6(i,j,k)
                  enddo
               enddo
            enddo

         enddo
      enddo

      deallocate (wr8_dvt_4_4_6)

      n1 = 10*int(gamma(2.0))
      n2 = n1/2
      allocate (r8_array_3(n1,n2+n2,n2*2,10))

      do l=1,10
         do k=1,10
            do j=1,10
               do i=1,10
                  r8_array_3(i,j,k,l) = r8_array_2(i,j,k,l)
               enddo
            enddo
         enddo
      enddo

      do n3=n2+1,n1
         do j=1,10
            do i=1,5
               r8_dvt_5_10(i,j) = r8_array_3(i,n3,n1,j)
     &                            +r8_array_3(4,5,10,4)
            enddo
         enddo
         do j=1,10
            do i=1,5
               r8_array_3(n2,i,j,n2) = r8_dvt_5_10(i,j)
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
     &                               + r8_array_3(n1,i,n3,n2)
               enddo
            enddo
         enddo
      enddo

      deallocate (r8_array_3)

      do i=1,10
         if (abs((result_vector(i) - result_scalar(i))/result_vector(i)))
     &                                    >= 0.00001) then
            no_good = .true.
         endif
      enddo

      if (no_good) then
         write(6,*) '*** NG ?? ***'
         write(6,*) '< VECTOR >  ',result_vector
         write(6,*) '< SCALAR >  ',result_scalar
         write(6,*) '*** NG ?? ***'

      else
         write(6,*) '*** OK ***'
      endif
      deallocate (w_result_vector,w_result_scalar)

      stop
      end

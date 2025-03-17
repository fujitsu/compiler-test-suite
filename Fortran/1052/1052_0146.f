      integer x(10,10,10), y(10,10,10)

      do i=1,10
        do j=1,10
          do k=1,10
            x(k,j,i)=i*j*k
          enddo
        enddo
      enddo

!$omp simd collapse(2)
      do i=1,10
        do j=1,10
          do k=1,10
            y(k,j,i)=x(k,j,i)
          enddo 
        enddo
      enddo

      if ((i .ne. 11) .or. (j .ne. 11)) then
        print*,"NG1", i, j
        stop 1
      endif

      do i=1,10
        do j=1,10
          do k=1,10
            if (x(k,j,i) .ne.  y(k,j,i)) then
              print*,"NG2"
              stop 1
            endif
          enddo
        enddo
      enddo

      print*,"OK"
      end

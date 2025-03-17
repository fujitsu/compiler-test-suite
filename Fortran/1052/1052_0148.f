      integer x(10,10), y(10,10)

      do i=1,10
        do j=1,10
          x(j,i)=i*j
        enddo
      enddo

!$omp do simd collapse(2)
      do i=1,10
        do j=1,10
          y(j,i)=x(j,i)
        enddo
      enddo

      if ((i .ne. 11) .or. (j .ne. 11)) then
        print*,"NG1", i, j
        stop 1
      endif

      do i=1,10
        do j=1,10
          if (x(j,i) .ne.  y(j,i)) then
            print*,"NG2"
            stop 1
          endif 
        enddo 
      enddo 

      print*,"OK"
      end

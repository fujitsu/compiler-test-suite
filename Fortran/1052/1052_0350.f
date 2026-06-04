      integer*1,allocatable:: x1,x2
      integer*1:: y1,y2
      allocate(x1,x2)
      x1=1_1
      x2=2_1 
      y1=1_1
      y2=2_1
      do i=1,4
        x1=x1*int(i,1)
        x2=x2*int(i,1)
      enddo
!$omp simd reduction(*:y1,y2)
      do i=1,4
        y1=y1*int(i,1)
        y2=y2*int(i,1)
      enddo
      if ((x1 .ne. y1).or.(x2 .ne. y2)) then
        print*,"NG", x1,y1,x2,y2 
        stop 1
      endif
      print*,"OK"
      end

      dimension a(0:10,2:10),b(0:10,2:10)
      a=1.0
      b=1.0
!$omp parallel do collapse(2) 
      do j=2,5*2
        do i=0,4+5
          a(i,j)=a(i,j)+1.0
        enddo
      enddo

      do j=2,5*2
        do i=0,4+5
          b(i,j)=b(i,j)+1.0
        enddo
      enddo

      do j=2,5*2
        do i=0,4+5
          if (a(i,j) .ne. b(i,j)) then
            print*,"NG"
            call exit
          endif
        enddo
      enddo
      print*,"OK"
      end


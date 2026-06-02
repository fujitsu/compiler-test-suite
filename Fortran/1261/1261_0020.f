      dimension a(0:10,10),b(0:10,10)
      a=1.0
      b=1.0
!$omp parallel do collapse(2) 
      do j=1,10
        do i=1,10
          a(i,j)=a(i,j)+1.0
        enddo
      enddo

      do j=1,10
        do i=1,10
          b(i,j)=b(i,j)+1.0
        enddo
      enddo

      do j=1,10
        do i=1,10
          if (a(i,j) .ne. b(i,j)) then
            print*,"NG"
            call exit
          endif
        enddo
      enddo
      print*,"OK"
      end

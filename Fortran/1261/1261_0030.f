      integer a(:,:),b(:,:)
      allocatable a,b
      allocate (a(10,10))
      allocate (b(10,10))
      a=1
      b=1
!$omp parallel do collapse(2) 
      do j=1,10
        do i=1,10
          a(i,j)=a(i,j)+1
        enddo
      enddo

      do j=1,10
        do i=1,10
          b(i,j)=b(i,j)+1
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

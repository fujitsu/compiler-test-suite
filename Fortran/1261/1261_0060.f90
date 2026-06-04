      integer a(100,100)
      integer*8 i,j
      a=1
!$omp parallel do collapse(2)
      do j=1,100 
        do i=1,100
          a(i,j)=a(i,j)+1
        enddo
      enddo
      do j=1,100
        do i=1,100
          if (a(i,j).ne.2) then
            print*,"NG"
            call exit
          endif
        enddo
      enddo
      print*,"OK"
      end

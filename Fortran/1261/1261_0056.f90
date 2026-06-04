      parameter(n=100,m=200)
      integer x(n,n,n),y(m,n,n)
!$omp parallel do collapse(2)
      do k=1,n
        do j=1,n
          do i=1,n
            x(i,j,k)=j*k
          enddo
          do ii=1,m
            y(ii,j,k)=j*k
          enddo
        enddo
      enddo

      do k=1,n
        do j=1,n
          do i=1,n
            if (x(i,j,k).ne.j*k) then
              print*,"NG"
              call exit
            endif
          enddo
          do ii=1,m
            if (y(ii,j,k).ne.j*k) then
              print*,"NG"
              call exit
            endif
          enddo
        enddo
      enddo
      print*,"OK"
      end

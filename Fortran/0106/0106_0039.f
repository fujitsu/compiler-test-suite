        subroutine sub(n)
        integer n
        real(kind=4),dimension(100,100)::a,b,f
        real(kind=4) :: res
        data a,b,f/30000*1.0/
        data res/100.0/

!$omp parallel do
        do i=1,n
          do j=1,n
            b(i,j) = 0.0
            do k=1,n
              b(i,j) = b(i,j) + a(i,k) * f(k,j)
            enddo
          enddo
        enddo
!$omp end parallel do
        if (res.eq.b(50,50)) then
          print*, "OK"
        else
          print*, "NG"
          print*, b(50,50)
        endif
        end

        call sub(100)
        end

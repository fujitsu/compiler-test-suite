call test01()
print *,"pass"
end

subroutine test01()
!$omp parallel
 do k=1,10
    do l1=1,10
       do m1=1,10
       enddo
    enddo
    do l2=1,10
    enddo
  enddo
!$omp end parallel
end

subroutine test02()
!$omp parallel
 do k=1,10
       do m1=1,10
       end do
    do l1=1,10
       do m1=1,10
    do l2=1,10
    enddo
       enddo
    enddo
    do l2=1,10
    enddo
    do l2=1,10
       do m1=1,10
       end do
    enddo
    do l2=1,10
    enddo
    do l2=1,10
       do m1=1,10
       end do
       do m1=1,10
       end do
       do m1=1,10
       end do
       do m1=1,10
       end do
       do m1=1,10
       end do
       do m1=1,10
       end do
    enddo
  enddo
!$omp end parallel
end

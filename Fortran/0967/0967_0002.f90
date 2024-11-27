subroutine sub01()
  real,dimension(10,10) :: a

!$omp parallel do collapse(15)
  do i1 = 1, 2
    do i2 = 1, 3
      do i3 = 1, 10
        do i4 = 1, 10
          do i5 = 1, 10
            do i6 = 1, 10
              do i7 = 1, 10
                do i8 = 1, 10
                  do i9 = 1, 10
                    do i10 = 1, 10
                      do i11 = 1, 10
                        do i12 = 1, 10
                          do i13 = 1, 10
                            do i14 = 1, 10
                              do i15 = 1, 10
                                a(i15,i14) = 0
                              enddo
                            enddo
                          enddo
                        enddo
                      enddo
                    enddo
                  enddo
                enddo
              enddo
            enddo
          enddo
        enddo
      enddo
    end do
  end do
!$omp end parallel do

  do i1 = 1, 2
    do i2 = i1, 3
      do i3 = 1, 10
        do i4 = 1, 10
          do i5 = i2, 10
            do i6 = 1, 10
              do i7 = i3, 10
                do i8 = 1, 10
                  do i9 = 1, 10,i1
!$omp parallel do collapse(6)
                    do i10 = 1, 10
                      do i11 = 1, 10
                        do i12 = 1, 10
                          do i13 = 1, 10
                            do i14 = 1, 10
                              do i15 = 1, 10
                                a(i15,i14) = 0
                              enddo
                            enddo
                          enddo
                        enddo
                      enddo
                    enddo
!$omp end parallel do
                  enddo
                enddo
              enddo
            enddo
          enddo
        enddo
      enddo
    end do
  end do

  do i1 = 1, 2
    do i2 = 1, 3
      do i3 = 1, 10
        do i4 = 1, 10
          do i5 = 1, 10
!$omp parallel do collapse(10)
            do i6 = 1, 10
              do i7 = 1, 10
                do i8 = 1, 10
                  do i9 = 1, 10
                    do i10 = 1, 10
                      do i11 = 1, 10
                        do i12 = i6, 10
                          do i13 = 1, 10
                            do i14 = 1, 10, i6
                              do i15 = 1, 10
                                a(i15,i14) = 0
                              enddo
                            enddo
                          enddo
                        enddo
                      enddo
                    enddo
                  enddo
                enddo
              enddo
            enddo
!$omp end parallel do
          enddo
        enddo
      enddo
    end do
  end do

end subroutine sub01

program main
  call sub01()
end program main


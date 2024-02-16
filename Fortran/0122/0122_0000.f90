subroutine three()
    integer, parameter :: lb1 = 0, lb2 = 0
    integer, parameter :: n = 3
    integer, parameter :: m = 4

    integer, save :: caf(lb1:n+lb1-1, lb2:m+lb2-1)[*]
    integer, save :: a(lb1:n+lb1-1, lb2:m+lb2-1)
    integer, save :: b(lb1:n+lb1-1, lb2:m+lb2-1)

    b = reshape([(i*33, i = 1, size(b))], shape(b))

    caf = -42
    a = -42
    a(:,:) = b(:, :)
    do j = lb2, m+lb2-1
      do i = 1, n+lb1-1, 2
        a(i,j) = b(i,j)
      end do
    end do
      do j = lb2, m+lb2-1
        do i = n+lb1-1, 1, -2
          caf(i,j)[num_images()] = b(i, j)
        end do
      end do
end subroutine three

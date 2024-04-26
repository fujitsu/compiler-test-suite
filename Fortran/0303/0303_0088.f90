  character(len=10) :: name(2)
  real :: axx(2), ayy(2), azz(2), axy(2), axz(2), ayz(2), b(2)
  
  integer :: n, k, m, c

call ssss
  do c = 1, size(name)
    select case(name(c))
    case('a')
      m = 0
      do n = 1, 3
        do k = n, 3
          m = m + 1
          select case (k*n)
          case (1)
            b(m) = axx(c)
          case (2)
            b(m) = axy(c)
          case (3)
            b(m) = axz(c)
          case (4)
            b(m) = ayy(c)
          case (6)
            b(m) = ayz(c)
          case (9)
            b(m) = azz(c)
          end select
        end do
      end do
    end select
  end do

end 
subroutine ssss
print *,'pass'
stop
end

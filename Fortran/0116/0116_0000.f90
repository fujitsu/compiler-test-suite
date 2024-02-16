
  program main

    interface
      pure function limiter(r)
        real(8),dimension(:),intent(in):: r
        real(8),dimension(size(r))     :: limiter
      end function limiter
    end interface

    real(8),dimension(5) :: delta_q, r
    real(8),parameter :: ANSWER=5.0
    real(8) :: result
    integer :: i,j,k
    integer :: s1,s2,s3,e1,e2,e3

    integer, dimension(3) :: isrt,iend

    isrt = 1
    iend = 100


    s1 = isrt(1)
    s2 = isrt(2)
    s3 = isrt(3)
    e1 = iend(1)
    e2 = iend(2)
    e3 = iend(3)

    r = 1

    do k = s3,e3
      do j = s2,e2
        do i = s1,e1
          delta_q = limiter(r)
        end do
      end do
    end do

    result = sum(delta_q)

    if ( result .eq. ANSWER ) then
      print *,"ok"
    else
      print *,"ng",result,ANSWER
    endif

  end program

  pure function limiter(r)
    real(8), dimension(:), intent(in) :: r
    real(8), dimension(size(r)) :: limiter
    limiter = 0.5*(r + 1.)
  end function limiter















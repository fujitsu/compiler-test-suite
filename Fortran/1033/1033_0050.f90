      module m
        type z
          integer,dimension(2)::zi
        end type z
        type y
          type(z),allocatable,dimension(:)::yta
        end type y
        type x
          type(y) :: xt
        end type x
      end module

      subroutine s1
       use m
       type w
         type(x),pointer :: wtp
       end type w
       type(w) :: a,b
        allocate(a%wtp, b%wtp)
          allocate(b%wtp%xt%yta(2))
        b%wtp%xt%yta(1)%zi = (/333,555/)
        b%wtp%xt%yta(2)%zi = (/777,999/)

        a%wtp = b%wtp

        if (loc(a%wtp%xt%yta(1))==loc(b%wtp%xt%yta(1))) print *,'error 1'
        if (loc(a%wtp%xt%yta(2))==loc(b%wtp%xt%yta(2))) print *,'error 2'
        deallocate(b%wtp%xt%yta)
        deallocate(b%wtp)
        if (any(a%wtp%xt%yta(1)%zi/=(/333,555/))) print *,'error 3'
        if (any(a%wtp%xt%yta(2)%zi/=(/777,999/))) print *,'error 4'

        allocate(b%wtp)
        b%wtp%xt = a%wtp%xt

        if ( loc(b%wtp%xt%yta(1))==loc(a%wtp%xt%yta(1))) print *,'error 1'
        if ( loc(b%wtp%xt%yta(2))==loc(a%wtp%xt%yta(2))) print *,'error 2'
        deallocate(a%wtp%xt%yta)
        deallocate(a%wtp)
        if ( any(b%wtp%xt%yta(1)%zi/=(/333,555/))) print *,'error 3'
        if ( any(b%wtp%xt%yta(2)%zi/=(/777,999/))) print *,'error 4'
      end subroutine s1

      subroutine s2
       use m
       type w
         type(x),pointer,dimension(:) :: wtp
       end type w
       type(w) :: a,b
        allocate(a%wtp(1), b%wtp(1))
          allocate(b%wtp(1)%xt%yta(2))
        b%wtp(1)%xt%yta(1)%zi = (/333,555/)
        b%wtp(1)%xt%yta(2)%zi = (/777,999/)

        a%wtp = b%wtp

        if (loc(a%wtp(1)%xt%yta(1))==loc(b%wtp(1)%xt%yta(1))) print *,'error 11'
        if (loc(a%wtp(1)%xt%yta(2))==loc(b%wtp(1)%xt%yta(2))) print *,'error 12'
        deallocate(b%wtp(1)%xt%yta)
        deallocate(b%wtp)
        if (any(a%wtp(1)%xt%yta(1)%zi/=(/333,555/))) print *,'error 13'
        if (any(a%wtp(1)%xt%yta(2)%zi/=(/777,999/))) print *,'error 14'

        allocate(b%wtp(1))
        b%wtp(1)%xt = a%wtp(1)%xt

        if (loc(b%wtp(1)%xt%yta(1))==loc(a%wtp(1)%xt%yta(1))) print *,'error 11'
        if (loc(b%wtp(1)%xt%yta(2))==loc(a%wtp(1)%xt%yta(2))) print *,'error 12'
        deallocate(a%wtp(1)%xt%yta)
        deallocate(a%wtp)
        if (any(b%wtp(1)%xt%yta(1)%zi/=(/333,555/)) ) print *,'error 13'
        if (any(b%wtp(1)%xt%yta(2)%zi/=(/777,999/)) ) print *,'error 14'
      end subroutine s2

      program main
        call s1()
        call s2()
        print *,'pass'
      end program main

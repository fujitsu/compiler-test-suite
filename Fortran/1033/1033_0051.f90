      module m
        type z
          integer::zi
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
         type(x),pointer,dimension(:) :: wtp
       end type w
       type(w) :: a,b
       integer,dimension(4)::vs1=(/1,2,3,4/), vs2=(/4,3,2,1/)
        allocate(a%wtp(4), b%wtp(4))
        allocate(b%wtp(1)%xt%yta(1))
        allocate(b%wtp(2)%xt%yta(1))
        allocate(b%wtp(3)%xt%yta(1))
        allocate(b%wtp(4)%xt%yta(1))
        b%wtp(1)%xt%yta(1)%zi = 111
        b%wtp(2)%xt%yta(1)%zi = 222
        b%wtp(3)%xt%yta(1)%zi = 333
        b%wtp(4)%xt%yta(1)%zi = 444

        b%wtp(vs1) = b%wtp(vs2)

        if (b%wtp(1)%xt%yta(1)%zi/=444) print *,'error 11'
        if (b%wtp(2)%xt%yta(1)%zi/=333) print *,'error 12'
        if (b%wtp(3)%xt%yta(1)%zi/=222) print *,'error 13'
        if (b%wtp(4)%xt%yta(1)%zi/=111) print *,'error 14'

        b%wtp(1:3:2) = b%wtp(3:1:-2)

        if (b%wtp(3)%xt%yta(1)%zi/=444) print *,'error 21'
        if (b%wtp(2)%xt%yta(1)%zi/=333) print *,'error 22'
        if (b%wtp(1)%xt%yta(1)%zi/=222) print *,'error 23'
        if (b%wtp(4)%xt%yta(1)%zi/=111) print *,'error 24'

      end subroutine s1

      program main
        call s1()
        print *,'pass'
      end program main

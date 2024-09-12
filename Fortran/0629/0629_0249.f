        type A_t
          SEQUENCE
            real*4 r_part
            real*4 i_part
        end type
        type (A_t),dimension(10):: A
        complex*8 C(10)
        equivalence (A,C)
        integer*8 i

        do i=1,10
          A(i)%r_part=1
          C(i)=2
        enddo

        print *,A(1)%r_part
        end

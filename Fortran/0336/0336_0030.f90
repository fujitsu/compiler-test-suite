        subroutine sub(b,n)
        pointer(b,a)
        real*8,dimension(10000)::a
        do i=1,n
          a(i+1) = a(i) + 1
        end do
        end
        program main
        parameter(n=10000)
        real*8,dimension(n)::a
        a=1
        call sub(loc(a),n-1)
        print *,sum(a(1:n/2)),sum(a(n/2+1:n))
        end

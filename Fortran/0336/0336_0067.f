        subroutine sub(n)
        real,allocatable,dimension(:)::a
        allocate(a(1000))
        a=1
        do i=1,n
          a(i+1) = a(i) + 1
        end do
        print *,sum(a)
        deallocate(a)
        end
        call sub(999)
        end

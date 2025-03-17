          integer,parameter::n=10
          real(8)::a(n),b(n,n)
print *,'pass'
          contains
          subroutine sub(a,b,n)
            real(8),dimension(1:n) :: a
            real(8),dimension(1:n,1:n) :: b
            do j=1,n
               do i=1,n
                  a(i) = a(i) + b(i,j)
               enddo
            enddo
          end subroutine sub
        end program


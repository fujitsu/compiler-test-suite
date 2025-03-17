          integer,parameter :: n=1000
          real(8),dimension(1:n) :: a,b
          integer,dimension(1),parameter ::y=1
          integer::z
          a = 1.
          b = 2.
          do i=1,n
             a(i) = a(i) + b(i)
          enddo
      print *,'pass' 
        end


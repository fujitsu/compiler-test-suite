            program main
            integer,parameter ::n=100
            real,dimension(n)::a
            real::sum

            do i=1,n
              a(i) = 1
            enddo
            sum = 0
            do i=1,n
              sum = sum + a(i)*1
            enddo
            print *,sum
            end

      real b(10)/10*0/
  
      integer n, k, m, c

      do c = 1, 10
         m = 0
         do n = 1, 3
            do k = n, 3
               m = m + 1
               select case (k+n)
               case (2)
                  b(m) = b(m) + 1
               case (4)
                  b(m) = b(m) + 2
               case (5)
                  b(m) = b(m) + 3
               case (3)
                  b(m) = b(m) + 4
               case (6)
                  b(m) = b(m) + 5
               case (7)
                  b(m) = b(m) + 6
               end select
            end do
         end do
      end do
      if (b(1).ne.10.00 .or. b(2).ne.40.0.or.m.ne.6) then
         write(6,*) ' ## NG ## '
         write(6,*) b,m
      else
         write(6,*) ' ## OK ## '
      endif
      end 

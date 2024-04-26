       real a(100)/100*0/
       real b(100)/100*1/
       real c(100)

       equivalence(a,c)

       do i=1,100
         a(i) = b(i)
       enddo

       do i=1,100
         if (a(i).ne.c(i)) then
           goto 100
         endif
       enddo
       print*, "OK"
       goto 200
 100   print*, "NG"
 200   continue
       end

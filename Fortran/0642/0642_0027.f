       call sub
       print *,'pass'
       end
       subroutine sub
       structure /str/
        complex*16 a(5,5),b(5,5)
       endstructure
       record /str/ s1(3)
       complex*16 i(3),j(3)
       call sub1(s1,i,j,3)
       end

       subroutine sub1(x1,i,j,n)
       structure /str/
        complex*16 a(5,5),b(5,5)
       endstructure
       record /str/ x1(n-2:n),w(:)
       allocatable w
       complex*16 i(n),j(n)
       allocate (w(n))
       
       end

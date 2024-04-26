       integer,parameter ::n=1000
       real,dimension(n,n) ::a=0
       do i=1,n
         do j=1,n
           a(i,j) = a(i,j) * func(i)
         enddo
       enddo
       end

       function func(i)
       func = i+1
       end

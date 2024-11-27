       integer*4 a(10)/1,2,3,4,5,6,7,8,9,0/
       integer*4 xmin/10/

       do i=1,10
         xmin =  min(xmin,a(i))
       enddo
       write(6,*) xmin
       stop
       end

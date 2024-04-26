       logical*8 ll(16)/10*.false.,6*.true./
       logical*8 lnn,lz(2)
       integer*8 a(16)/1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16/
       integer*8 nn,z(2)

       do i=1,16
          nn = a(i)
       enddo   
       if (nn.ne.16) stop 1

       do i=1,16
          z(1) = a(i)
       enddo   
       if (z(1).ne.16) stop 2

       do i=1,16
          lnn = ll(i)
       enddo   
       if (.not.lnn) stop 3

       do i=1,16
          lz(2) = ll(i)
       enddo   
       if (.not.lz(2)) stop 4

       write(6,*) ' ok '

       end

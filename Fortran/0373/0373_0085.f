       integer*4 a(10),b(11)/11*0/
       integer*4 ll
       data a/1,2,3,4,5,6,7,8,9,10/

       do i=1,10
          ll=a(i)
          if (i<5) then
            b(i)=a(i)+ll
            ll=i
          endif
          b(i+1)=a(i)+ll
          b(i)=ll
       enddo
       write(6,*) b
       end

     complex(4)::t(3,2)
     data t/1,2,3,4,5,6/
     do j=1,2
        do i=1,2
           t(i+1,j)=t(i,j)+(1,-2)
        enddo
     enddo

      write(6,*) t
    end

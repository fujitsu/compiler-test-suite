     complex(4)::t(3,2)
     data t/1,2,3,4,5,6/
      forall(j=1:2)
       forall(i=1:2)
        t(i+1,j)=t(i,j)+(1,-2)
       endforall
      endforall

      write(6,*) t
    end

         integer ,parameter ::i(101)=(/1,(-k,k=1,100)/)
         integer ,parameter ::j(0)=-1
         integer ::ii(101)
         integer ::jj(0)    
         call mvbits(i,i,i,ii,i) 
         call mvbits(j,j,j,jj,j) 
         end

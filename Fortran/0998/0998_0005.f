         integer ,parameter ::i1=z'7fffffff'
         integer ,parameter ::i2=3                 
         integer *8,parameter ::j1=z'000000007fffffff'
         integer *8,parameter ::j2=3                 
         integer ii
         call mvbits(i,i2,i1,ii,i) 
         call mvbits(i,i,i1,ii,i2) 
         call mvbits(i,j2,j1,ii,i) 
         call mvbits(i,i,j1,ii,j2) 
         call mvbits(i,j1,j2,ii,i) 
         call mvbits(i,i,j2,ii,j1) 
         end

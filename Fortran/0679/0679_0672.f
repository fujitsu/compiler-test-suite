      program main
      real a(6,4,4)/96*2/,b(6,3)/18*0/
      data n/4/
      do 10 i=1,6
       s=i
       do 11 j=2,4
        do 12 k=2,n
         a(i,j,k)=a(i,j-1,k-1)+s
 12     continue
 11     b(i,j-1)=s
 10   continue
      write(6,*) a
      write(6,*) b
      stop
      end

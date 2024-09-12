      program main
       integer  i,j,b(5,5)
	integer  pi
	pointer (ppi,pi)
        b = -1
	ppi=loc(i)
       do 25 i=1,5
         do 25 j=1,5
           b(j,i)=pi
   25  continue
       write(6,*) b
      end

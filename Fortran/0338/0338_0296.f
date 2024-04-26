
             subroutine sub(a,b,c)
	     complex a,b,c
	     do 1 i=1,10
	     a=a/(b*c)
1            continue
	     return
	     end
	     complex a/(11111.0,111111.0)/,b/(2.0,2.0)/,c/(4.0,4.0)/
	     call sub(a,b,c)
	     write(6,*)  a,b,c 
	     stop
	     end



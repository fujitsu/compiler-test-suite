        k01=-1;k02=-1; k03=-1;k04=-1;k05=-1
c$
c$ 
c$  
c$   
c$    
c$     
c$                             
c$c1
c$c 2
c$   c
c$3   k01=1
c$ 4  k02=1
c$    k05
c$   1
c$   2=1              
c$   3
c$   4 
c$x
c$ x
c$  x
c$x   x
c$ x  x
c$  x x
!!!! tab exist
c$	
c$	 
c$  	
cc$	5
cc$ 	6
cc$	7   k03=1
cc$ 	8  k04=1

      if (k01/=1) print *,101
      if (k02/=1) print *,102
      if (k05/=1) print *,105
      if (k03==-2) goto 3
      if (k04==-2) goto 4
      print *,'pass'
      end

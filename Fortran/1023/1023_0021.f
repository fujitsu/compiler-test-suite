1      parameter (a=9)
2      parameter (b=8)
3      parameter (c=7)
4      print *,'a=',a,' b=',b,' c=',c
       rc = func(a,b,c)
 	
6      end

       function func(x,y,z)
       func=z
       print *,'x=',x,' y=',y,' z=',z
       end


             complex a(10),b(10)/10*(1.0,1.0)/
	     do 1 i=1,10
1           a(i)=sin(b(i))
	     continue
	     write(6,*) a,b
	     stop
	     end


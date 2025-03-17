       integer num1
       real num2
       num1 = 1.0
       num2 = 80.0
       if(num2.ge.80.0) then
	  write(6,*) num1,num2,'   ok'
       else
	  write(6,*) num1,num2,'   error'
       endif
       stop
       end

       structure /st/
	  character*3 ch3
	  structure aaa
	     integer i4
          end structure
       end structure
       record /st/ st1,st2(-1:-1),st3
       common /com1/ st1(1)
       common /com1/ st2
       common /com1/ st3
       end

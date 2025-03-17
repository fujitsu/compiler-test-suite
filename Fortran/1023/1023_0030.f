       structure /st/
	  integer*1 i1
	  integer*2 i2
       end structure

       record /st/ st1
       record /st/ st2
       record /st/ st3
       st1%i1 = 1
       st2%i2 = 2
       st3%i1 = 4
       call sub()
       print *,st1.i1
       print *,st2.i2
       print *,st3.i1
       end

       subroutine sub()
       structure /st/
	  integer*1 i1
	  integer*2 i2
       end structure
       record /st/ str1,str2
       str1%i1 = 3
       str1%i2 = 5
       print *,str1
       end

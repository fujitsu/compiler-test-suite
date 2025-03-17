       structure /st1/
	  integer*2 i1
       end structure
       structure /st2/
	  integer*2 i2
       end structure
       record /st1/ i1_st1,i1_st2
       record /st2/ i2_st1,i2_st2

       i1_st1%i1 = 1
       i1_st2%i1 = 1

       i2_st1%i2 = 2
       i2_st2%i2 = 2
       end

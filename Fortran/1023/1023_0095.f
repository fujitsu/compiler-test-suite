       structure /st1/
	  integer*1 i1
       end structure
       structure /st2/
	  integer*2 i2
       end structure
       structure /m_st/
	  record /st1/ i1_st1,i1_st2
	  record /st2/ i2_st1,i2_st2
       end structure

       record /m_st/ m_st1
       end

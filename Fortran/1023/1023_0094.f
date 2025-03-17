       structure /st/
	  integer*1 i1
	  integer*2 i2
       end structure
       structure /m_st/
	  record /st/ i_st1,i_st2
       end structure
       record /m_st/ aaaaa
       end

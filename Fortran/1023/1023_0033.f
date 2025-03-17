       structure /st/
	  integer*1 i1
	  integer*2 i2
       end structure
       structure /m_st/
	  record /st/ i_st1,i_st2
       end structure

       record /m_st/ m_st1
       m_st1%i_st1%i1 = 1
       m_st1%i_st1%i2 = 2
       m_st1%i_st2%i1 = 1
       m_st1%i_st2%i2 = 2
       print *,m_st1
       print *,m_st1%i_st1
       print *,m_st1
       print *,m_st1%i_st2
       end

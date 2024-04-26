	module moda
	contains
	 subroutine m_s1
	 call m_c_s1
	 contains
	 subroutine m_c_s1
	   integer,target:: a
	   integer,pointer:: ap
	   a=0
	   ap=>a
	   do i=1,10
	     print *,a
	     call m_s2(ap,i)
	     print *,ap
	   enddo
	   end subroutine
	 end subroutine
	 subroutine m_s2(ap,in)
	 integer,pointer:: ap
	 ap=in
	 return
	 end subroutine
	end module
	use moda
	call m_s1
	stop
	end

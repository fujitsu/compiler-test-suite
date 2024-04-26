	call c_s1
	stop
	contains
	 subroutine c_s1
	 integer,target:: a
	 integer,pointer:: ap
	 a=0
	 ap=>a
	 do i=1,10
	   print *,a
	   print *,ap
	   call c_s2(ap,i)
	 enddo
	 end subroutine
	 subroutine c_s2(ap,in)
	 integer,pointer:: ap
	 ap=in
	 return
	 end subroutine
	end

         integer*1 a
         parameter (a=z'7f')
         call sub(ibset(a,7))
         end
	 subroutine sub(i)
	 integer*1 i
	 if( i .eq. -1 ) then 
	   print *,' OK '
         else
	   print *,' NG '
         endif
	 end

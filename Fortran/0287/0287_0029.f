	subroutine sub(c1,c2,n)
	character*(n) c1,c2
	if( c1==c2 ) then ; print *,"1"; else ; print *,"2"; endif
	if( c1/=c2 ) then ; print *,"1"; else ; print *,"2"; endif
	if( c1>=c2 ) then ; print *,"1"; else ; print *,"2"; endif
	if( c1<=c2 ) then ; print *,"1"; else ; print *,"2"; endif
	if( c1> c2 ) then ; print *,"1"; else ; print *,"2"; endif
	if( c1< c2 ) then ; print *,"1"; else ; print *,"2"; endif
	end
	character*0 c1,c2
	if( c1==c2 ) then ; print *,"1"; else ; print *,"2"; endif
	if( c1/=c2 ) then ; print *,"1"; else ; print *,"2"; endif
	if( c1>=c2 ) then ; print *,"1"; else ; print *,"2"; endif
	if( c1<=c2 ) then ; print *,"1"; else ; print *,"2"; endif
	if( c1> c2 ) then ; print *,"1"; else ; print *,"2"; endif
	if( c1< c2 ) then ; print *,"1"; else ; print *,"2"; endif
	call sub(c1,c2,0)
	end

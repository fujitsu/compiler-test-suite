	program main
	complex*8 c8_1,c8_2,c8_1c,c8_2c
	complex*16 c16_1,c16_2,c16_1c,c16_2c
	parameter( c8_1c = (1.0,2.0) )
	parameter( c8_2c = (3.0,4.0) )
	parameter( c16_1c = (1.0,2.0) )
	parameter( c16_2c = (3.0,4.0) )
	c8_1 = c8_1c
	c8_2 = c8_2c
	c16_1 = c16_1c
	c16_2 = c16_2c
	call sub1(1,2,3,4,5,c8_1,c8_2,6);
	call sub2(1,2,3,4,5,c16_1,c16_2,6);
	call sub1(1,2,3,4,5,c8_1c,c8_2c,6);
	call sub2(1,2,3,4,5,c16_1c,c16_2c,6);
	call sub1(1,2,3,4,5,(1.0,2.0),(3.0,4.0),6);
	call sub2(1,2,3,4,5,DCMPLX(1.0,2.0),DCMPLX(3.0,4.0),6);
	end
	subroutine sub1(i,j,k,l,m,c8_1,c8_2,n)
	complex*8 c8_1,c8_2
	if( c8_1 .eq. (1.0,2.0) .and. c8_2 .eq. (3.0,4.0) ) then
	   print *,' OK ',i,j,k,l,m,n
        else
	   print *,' NG ',i,j,k,l,m,n
        endif
        end
	subroutine sub2(i,j,k,l,m,c16_1,c16_2,n)
	complex*16 c16_1,c16_2
	if( c16_1 .eq. (1.0,2.0) .and. c16_2 .eq. (3.0,4.0) ) then
	   print *,' OK ',i,j,k,l,m,n
        else
	   print *,' NG ',i,j,k,l,m,n
        endif
        end

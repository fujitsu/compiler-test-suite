	block  data
	implicit none
	integer i,move
	character from,to
	common /com/i,move(0:6),from(0:6),to(0:6)
	data i/0/
	end
	program main
	implicit none
	integer i,move
	character from,to
	common /com/i,move(0:6),from(0:6),to(0:6)

	call sub(3,'a','b','c')
        if(move(0)==1 .and. from(0)=='a' .and. to(0)=='b' .and. 
     +     move(1)==2 .and. from(1)=='a' .and. to(1)=='c' .and.
     +     move(2)==1 .and. from(2)=='b' .and. to(2)=='c' .and. 
     +     move(3)==3 .and. from(3)=='a' .and. to(3)=='b' .and. 
     +     move(4)==1 .and. from(4)=='c' .and. to(4)=='a' .and. 
     +     move(5)==2 .and. from(5)=='c' .and. to(5)=='b' .and.
     +     move(6)==1 .and. from(6)=='a' .and. to(6)=='b'   )  then
          print *,"OK  "
    	else
	  print *,"NG  "
	endif
	end
	recursive subroutine sub(n,a,b,c)
	implicit none
	integer i,move
	character from,to
	integer n
	character*1 a,b,c
	common /com/i,move(0:6),from(0:6),to(0:6)
	if( n==1 ) then
    	  move(i)=n; from(i)=a; to(i)=b; i=i+1;
	  print *," MOVE ",n," FROM ",a," TO ",b
	else
    	  call sub(n-1,a,c,b);
	  move(i)=n; from(i)=a; to(i)=b; i=i+1
	  print *," MOVE ",n," FROM ",a," TO ",b
	  call sub(n-1,c,b,a);
 	endif
	end

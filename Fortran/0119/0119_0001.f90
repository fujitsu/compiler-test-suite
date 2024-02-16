	integer a(20),b(20),c(20),res(20)
	data a/20*0/,b/1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20/
	data c/20*3/
	data res/4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,0,0/
	n = ifunc(18)

	do i=1,n
	  a(i) = b(i) + c(i)
	enddo


	do i=1,20
	  if(a(i).ne.res(i)) then
		write(6,*) 'NG No.',i
		write(6,*) a
		write(6,*) res
		stop
	  endif
	enddo
	write(6,*) 'ok'
	end

	integer function ifunc(nn)
	ifunc = nn
	end

	

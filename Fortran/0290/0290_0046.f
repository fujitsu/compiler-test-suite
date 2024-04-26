        block data
	common /com/i,j,r,q,n
        data i/0/
	data j/1/
	data r/0/
	data q/1/
	data n/11/
	end
	common /com/i,j,r,q,n
	do k=1,n
	  i = i + j
	  r = r + q
        enddo
	print *,i,j,r,q
	end

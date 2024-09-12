	subroutine sub(i)
	goto  (1,2,3,4,5,6),i
1	continue
	i=1 ; return 
2	continue
	i=2 ; return 
3	continue
	i=3 ; return 
4	continue
	i=4 ; return 
5	continue
	i=5 ; return 
6	continue
	i=6 ; return 
	end
	i=1
	call sub(i)
	print *,i
	i=3
	call sub(i)
	print *,i
	i=7
	call sub(i)
	print *,i
	end

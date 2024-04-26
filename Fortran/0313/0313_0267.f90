	subroutine case0(ok)
	integer*8 ans(10),inn(10),ok(10)
	data inn/-1,-2,-3,-4,0,1,2,3,4,5/
	do i=1,10
	   ans(i)=sign(1,inn(i))
	enddo
	write(6,*) merge("OK","NG",all(ans==ok))
	end

	subroutine case1(ok)
	integer*8 ans(10),inn(10),ok(10)
	data inn/-1,-2,-3,-4,0,1,2,3,4,5/
	do i=1,10
	   ans(i)=sign(-1,inn(i))
	enddo
	write(6,*) merge("OK","NG",all(ans==ok))
	end

	subroutine case2(ok)
	integer*8 ans(10),inn(10),ok(10)
	data inn/-1,-2,-3,-4,0,1,2,3,4,5/
	do i=1,10
	   ans(i)=sign(inn(i),1)
	enddo
	write(6,*) merge("OK","NG",all(ans==ok))
	end

	subroutine case3(ok)
	integer*8 ans(10),inn(10),ok(10)
	data inn/-1,-2,-3,-4,0,1,2,3,4,5/
	do i=1,10
	   ans(i)=sign(inn(i),-1)
	enddo
	write(6,*) merge("OK","NG",all(ans==ok))
	end

        integer*8 ok1(10)/ -1,-1,-1,-1,1,1,1,1,1,1 /
	integer*8 ok2(10)/ -1,-1,-1,-1,1,1,1,1,1,1 /
	integer*8 ok3(10)/ 1,2,3,4,0,1,2,3,4,5 /
	integer*8 ok4(10)/ -1,-2,-3,-4,0,-1,-2,-3,-4,-5 /

	call case0(ok1)
	call case1(ok2)
	call case2(ok3)
	call case3(ok4)
	end

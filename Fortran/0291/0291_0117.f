	block data 
	real i,j
	common/com/i,j
	data i/1/,j/0/
	end
!
	logical function fun1(i,j)
	implicit none
	real i,j
	fun1 = i.ne.j
	end
!
	logical function fun2(i,j)
	implicit none
	real i,j
	fun2 = i.eq.j
	end
!
	logical function fun3(i,j)
	implicit none
	real i,j
	fun3 = i.lt.j
	end
!
	logical function fun4(i,j)
	implicit none
	real i,j
	fun4 = i.le.j
	end
!
	logical function fun5(i,j)
	implicit none
	real i,j
	fun5 = i.gt.j
	end
!
	logical function fun6(i,j)
	implicit none
	real i,j
	fun6 = i.ge.j
	end
!
	subroutine test1
	implicit none
	logical fun1,fun2,fun3
	logical fun4,fun5,fun6
	common/com/i,j
	real i,j
	if( fun1(i,j) ) then
	  print *,' OK '
	else
	  print *,' NG '
	endif
	if( fun2(i,j) ) then
	  print *,' NG '
	else
	  print *,' OK '
	endif
	if( fun3(i,j) ) then
	  print *,' NG '
	else
	  print *,' OK '
	endif
	if( fun4(i,j) ) then
	  print *,' NG '
	else
	  print *,' OK '
	endif
	if( fun5(i,j) ) then
	  print *,' OK '
	else
	  print *,' NG '
	endif
	if( fun6(i,j) ) then
	  print *,' OK '
	else
	  print *,' NG '
	endif
	end
!
	subroutine test2
	implicit none
	logical fun1,fun2,fun3
	logical fun4,fun5,fun6
	common/com/i,j
	real i,j
	if( .not.fun1(i,j) ) then
	  print *,' NG '
	else
	  print *,' OK '
	endif
	if( .not.fun2(i,j) ) then
	  print *,' OK '
	else
	  print *,' NG '
	endif
	if( .not.fun3(i,j) ) then
	  print *,' OK '
	else
	  print *,' NG '
	endif
	if( .not.fun4(i,j) ) then
	  print *,' OK '
	else
	  print *,' NG '
	endif
	if( .not.fun5(i,j) ) then
	  print *,' NG '
	else
	  print *,' OK '
	endif
	if( .not.fun6(i,j) ) then
	  print *,' NG '
	else
	  print *,' OK '
	endif
	end
!
	program main
	call test1
	call test2
	end

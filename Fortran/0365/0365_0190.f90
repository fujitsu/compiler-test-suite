	subroutine sub(a,n,nstep)
	dimension a(n)
	do i=1,n,nstep
	  a(i) = 1
	end do
	end
	parameter(n=1000)
	dimension a(n)
	a=0; call sub(a,n,-1) ; print *,sum(a)
	a=0; call sub(a,n,1) ; print *,sum(a)
	a=0; call sub(a,n,2) ; print *,sum(a)
	a=0; call sub(a,n,3) ; print *,sum(a)
	a=0; call sub(a,n,4) ; print *,sum(a)
	a=0; call sub(a,n,7) ; print *,sum(a)
	a=0; call sub(a,n,10) ; print *,sum(a)
	a=0; call sub(a,n,n-2) ; print *,sum(a)
	a=0; call sub(a,n,n-1) ; print *,sum(a)
	a=0; call sub(a,n,n-0) ; print *,sum(a)
	a=0; call sub(a,n,n+1) ; print *,sum(a)
	a=0; call sub(a,n,n+2) ; print *,sum(a)
	a=0; call test1 ; print *,sum(a)
	a=0; call test2 ; print *,sum(a)
	a=0; call test3 ; print *,sum(a)
	a=0; call test4 ; print *,sum(a)
	a=0; call test5 ; print *,sum(a)
	a=0; call test6 ; print *,sum(a)
	a=0; call test7 ; print *,sum(a)
	a=0; call test8 ; print *,sum(a)
	a=0; call test9 ; print *,sum(a)
	a=0; call test10; print *,sum(a)
	a=0; call test11; print *,sum(a)
	a=0; call test12; print *,sum(a)
	contains
	  subroutine test1
	  nstep = -1
	  do i=1,n,nstep
	    a(i) = 1
	  end do
	  end subroutine 
	  recursive subroutine test2
	  nstep =  1
	  do i=1,n,nstep
	    a(i) = 1
	  end do
	  end subroutine 
	  subroutine test3
	  nstep =  2
	  do i=1,n,nstep
	    a(i) = 2
	  end do
	  end subroutine 
	  recursive subroutine test4
	  nstep =  3
	  do i=1,n,nstep
	    a(i) = 1
	  end do
	  end subroutine 
	  subroutine test5
	  nstep =  4
	  do i=1,n,nstep
	    a(i) = 1
	  end do
	  end subroutine 
	  recursive subroutine test6
	  nstep =  7
	  do i=1,n,nstep
	    a(i) = 1
	  end do
	  end subroutine 
	  subroutine test7
	  nstep =  10
	  do i=1,n,nstep
	    a(i) = 1
	  end do
	  end subroutine 
	  recursive subroutine test8
	  nstep =  n-2
	  do i=1,n,nstep
	    a(i) = 1
	  end do
	  end subroutine 
	  subroutine test9
	  nstep =  n-1
	  do i=1,n,nstep
	    a(i) = 1
	  end do
	  end subroutine 
	  recursive subroutine test10
	  nstep =  n
	  do i=1,n,nstep
	    a(i) = 1
	  end do
	  end subroutine 
	  subroutine test11
	  nstep =  n+1
	  do i=1,n,nstep
	    a(i) = 1
	  end do
	  end subroutine 
	  recursive subroutine test12
	  nstep =  n+2
	  do i=1,n,nstep
	    a(i) = 1
	  end do
	  end subroutine 
	end


	subroutine sub(a,n)
	dimension a(n)
	do i=1,n,2
	  a(i) = 1
	end do
	end
	parameter(nn=1000)
	dimension a(nn+2)
	a=0; call sub(a,-1) ; print *,sum(a)
	a=0; call sub(a,1) ; print *,sum(a)
	a=0; call sub(a,2) ; print *,sum(a)
	a=0; call sub(a,3) ; print *,sum(a)
	a=0; call sub(a,4) ; print *,sum(a)
	a=0; call sub(a,7) ; print *,sum(a)
	a=0; call sub(a,10) ; print *,sum(a)
	a=0; call sub(a,nn-2) ; print *,sum(a)
	a=0; call sub(a,nn-1) ; print *,sum(a)
	a=0; call sub(a,nn-0) ; print *,sum(a)
	a=0; call sub(a,nn+1) ; print *,sum(a)
	a=0; call sub(a,nn+2) ; print *,sum(a)
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
	  n = -1
	  do i=1,n,2
	    a(i) = 1
	  end do
	  end subroutine 
	  recursive subroutine test2
	  n =  1
	  do i=1,n,2
	    a(i) = 1
	  end do
	  end subroutine 
	  subroutine test3
	  n =  2
	  do i=1,n,2
	    a(i) = 1
	  end do
	  end subroutine 
	  recursive subroutine test4
	  n =  3
	  do i=1,n,2
	    a(i) = 1
	  end do
	  end subroutine 
	  subroutine test5
	  n =  4
	  do i=1,n,2
	    a(i) = 1
	  end do
	  end subroutine 
	  recursive subroutine test6
	  n =  7
	  do i=1,n,2
	    a(i) = 1
	  end do
	  end subroutine 
	  subroutine test7
	  n =  10
	  do i=1,n,2
	    a(i) = 1
	  end do
	  end subroutine 
	  recursive subroutine test8
	  n =  nn-2
	  do i=1,n,2
	    a(i) = 1
	  end do
	  end subroutine 
	  subroutine test9
	  n =  nn-1
	  do i=1,n,2
	    a(i) = 1
	  end do
	  end subroutine 
	  recursive subroutine test10
	  n =  nn
	  do i=1,n,2
	    a(i) = 1
	  end do
	  end subroutine 
	  subroutine test11
	  n =  nn+1
	  do i=1,n,2
	    a(i) = 1
	  end do
	  end subroutine 
	  recursive subroutine test12
	  n =  nn+2
	  do i=1,n,2
	    a(i) = 1
	  end do
	  end subroutine 
	end


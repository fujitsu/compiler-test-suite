	program pointer_test
	common /opt/iopt
	common /com/i,j,k
	logical*1 flag 
	iopt = 1
        i=0
        j=0
        k=0
	call sub(loc(i),loc(j),loc(k),flag)
	if( flag ) then
	  print *,' OK '
        else 
	  print *,' NG '
        endif
	end
	subroutine sub(ia,ja,ka,flag)
	common /opt/iopt
	common /com/i,j,k
	logical*1 flag 

	integer*8 ia,ja,ka

	pointer(ip,ib)
	pointer(jp,jb)
	pointer(kp,kb)
	flag = .true.
	ip = ia
	jp = ja
	kp = ka
	do ii=1,iopt
          if( loc(ib) .ne. loc(i) )  flag = .false.
          if( loc(jb) .ne. loc(j) )  flag = .false.
          if( loc(kb) .ne. loc(k) )  flag = .false.
          if( ib .ne. i )  flag = .false.
          if( jb .ne. j )  flag = .false.
          if( kb .ne. k )  flag = .false.
	end do
	end

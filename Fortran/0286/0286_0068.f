!
	program main
	intrinsic dprod
	call test(dprod)
	end
!
	subroutine test(outline)
	common/com/datas
	external outline
	real*4 datas(10),t1,t0
	real*8 ans(10,10),outline,ans2,ans1
	integer*8 ians1,ians2
	equivalence(ans1,ians1)
	equivalence(ans2,ians2)
	call init
	do i=1,10
        t0=datas(i)
	do j=1,10
        t1=datas(j)
	ans(i,j) = dprod(t0,t1)
	enddo
	enddo
	do i=1,10
	do j=1,10
        ans2 = outline(datas(i),datas(j))
	ans1 = ans(i,j)
	if( ians1 .ne. ians2 ) then
!
        if( i==2 .and. j==1 ) cycle
        if( i==1 .and. j==2 ) cycle
	print *,"(",i,",",j,")",datas(i),"*",datas(j),"=",ans(i,j),ans2
	print 2,datas(i)
	print 2,datas(j)
2	format(1h ,z8.8)
	print 1,ians1
	print 1,ians2
1	format(1h ,z16.16)
	end if
	end do
	end do
	print *,'PASS'
	end
!
	subroutine init
	common/com/datas
  	real*4 zero / 0.0 /
  	real*4 mzero  / z'80000000' /
	real*4 one / 1.0 /
	real*4 snan / z'7f800001' /
	real*4 FLT_MAX / 3.402823466E+38 /
	real*4 FLT_MIN / 1.175494351E-38 /
	real*4 datas(10)
     	real*4 nan
	real*4 NDENORM
	real*4 PDENORM
	nan  = zero/zero
	NDENORM = -FLT_MIN/100.0
	PDENORM =  FLT_MIN/100.0
	datas(1) = snan
	datas(2) = nan
	datas(3) = -FLT_MAX*100.0
	datas(4) = FLT_MAX*100.0
	datas(5) = NDENORM
	datas(6) = PDENORM
	datas(7) = mzero
	datas(8) = zero
	datas(9) = -one
	datas(10) = one
	end

	function usign1(a,b)
	implicit none
	integer*1 a,b,usign1
	if( b >= 0 ) then
	   usign1 = abs(a)
	else
	   usign1 = -abs(a)
	endif
	end
	function usign2(a,b)
	implicit none
	integer*2 a,b,usign2
	if( b >= 0 ) then
	   usign2 = abs(a)
	else
	   usign2 = -abs(a)
	endif
	end
	function usign4(a,b)
	implicit none
	integer*4 a,b,usign4
	if( b >= 0 ) then
	   usign4 = abs(a)
	else
	   usign4 = -abs(a)
	endif
	end
	program main
	call test1
	end
	block data
	common /comi1/i1_1,i1_m1,i1_m10,i1_0,i1_res
	common /comi2/i2_1,i2_m1,i2_m10,i2_0,i2_res
	common /comi4/i4_1,i4_m1,i4_m10,i4_0,i4_res
	common /comr4/r4_1,r4_m1,r4_m10,r4_0,r4_res
	common /comr8/r8_1,r8_m1,r8_m10,r8_0,r8_res
	integer*1 i1_1,i1_m1,i1_m10,i1_0,i1_res
	data i1_1/1/,i1_m1/-1/,i1_m10/-10/,i1_0/0/
	integer*2 i2_1,i2_m1,i2_m10,i2_0,i2_res
	data i2_1/1/,i2_m1/-1/,i2_m10/-10/,i2_0/0/
	integer*4 i4_1,i4_m1,i4_m10,i4_0,i4_res
	data i4_1/1/,i4_m1/-1/,i4_m10/-10/,i4_0/0/
	real*4    r4_1,r4_m1,r4_m10,r4_0,r4_res
	data    r4_1/1/,r4_m1/-1/,r4_m10/-10/,r4_0/0/
	real*8    r8_1,r8_m1,r8_m10,r8_0,r8_res
	data    r8_1/1/,r8_m1/-1/,r8_m10/-10/,r8_0/0/
	end
	subroutine test1
	implicit none
	integer*2 usign2
	common /comi2/i2_1,i2_m1,i2_m10,i2_0,i2_res
	integer*2 i2_1,i2_m1,i2_m10,i2_0,i2_res
	integer*2,parameter::i2_c1=1
	integer*2,parameter::i2_cm1=-1
	integer*2,parameter::i2_cm10=-10
	integer*2,parameter::i2_c0=0
	integer*2,save::i2_s1=1
	integer*2,save::i2_sm1=-1
	integer*2,save::i2_sm10=-10
	integer*2,save::i2_s0=0
	integer*2::i2_a1
	integer*2::i2_am1
	integer*2::i2_am10
	integer*2::i2_a0
	i2_a1 = 1
	i2_am1 = -1
	i2_am10 = -10
	i2_a0 = 0
!
	print *,sign(i2_c1,i2_c1),  usign2(i2_c1,i2_c1)
	print *,sign(i2_c1,i2_cm1), usign2(i2_c1,i2_cm1)
	print *,sign(i2_c1,i2_cm10),usign2(i2_c1,i2_cm10)
	print *,sign(i2_c1,i2_c0),  usign2(i2_c1,i2_c0)
!
	print *,sign(i2_c1,i2_cm10+i2_c1-i2_c1),
     +	      usign2(i2_c1,i2_cm10+i2_c1-i2_c1)
	print *,sign(i2_c1,i2_am10),usign2(i2_c1,i2_am10)
	print *,sign(i2_c1,i2_sm10),usign2(i2_c1,i2_sm10)
	print *,sign(i2_c1,i2_m10), usign2(i2_c1,i2_m10)
!
	print *,sign(i2_cm1,i2_c1),  usign2(i2_cm1,i2_c1)
	print *,sign(i2_cm1,i2_cm1), usign2(i2_cm1,i2_cm1)
	print *,sign(i2_cm1,i2_cm10),usign2(i2_cm1,i2_cm10)
	print *,sign(i2_cm1,i2_c0),  usign2(i2_cm1,i2_c0)
!
	print *,sign(i2_cm10,i2_c1),  usign2(i2_cm10,i2_c1)
	print *,sign(i2_cm10,i2_cm1), usign2(i2_cm10,i2_cm1)
	print *,sign(i2_cm10,i2_cm10),usign2(i2_cm10,i2_cm10)
	print *,sign(i2_cm10,i2_c0),  usign2(i2_cm10,i2_c0)
!
	print *,sign(i2_c0,i2_c1),  usign2(i2_c0,i2_c1)
	print *,sign(i2_c0,i2_cm1), usign2(i2_c0,i2_cm1)
	print *,sign(i2_c0,i2_cm10),usign2(i2_c0,i2_cm10)
	print *,sign(i2_c0,i2_c0),  usign2(i2_c0,i2_c0)
!
	print *,sign(i2_s1,i2_c1),  usign2(i2_s1,i2_c1)
	print *,sign(i2_s1,i2_cm1), usign2(i2_s1,i2_cm1)
	print *,sign(i2_s1,i2_cm10),usign2(i2_s1,i2_cm10)
	print *,sign(i2_s1,i2_c0),  usign2(i2_s1,i2_c0)
!
	print *,sign(i2_sm1,i2_c1),  usign2(i2_sm1,i2_c1)
	print *,sign(i2_sm1,i2_cm1), usign2(i2_sm1,i2_cm1)
	print *,sign(i2_sm1,i2_cm10),usign2(i2_sm1,i2_cm10)
	print *,sign(i2_sm1,i2_c0),  usign2(i2_sm1,i2_c0)
!
	print *,sign(i2_sm10,i2_c1),  usign2(i2_sm10,i2_c1)
	print *,sign(i2_sm10,i2_cm1), usign2(i2_sm10,i2_cm1)
	print *,sign(i2_sm10,i2_cm10),usign2(i2_sm10,i2_cm10)
	print *,sign(i2_sm10,i2_c0),  usign2(i2_sm10,i2_c0)
!
	print *,sign(i2_s0,i2_c1),  usign2(i2_s0,i2_c1)
	print *,sign(i2_s0,i2_cm1), usign2(i2_s0,i2_cm1)
	print *,sign(i2_s0,i2_cm10),usign2(i2_s0,i2_cm10)
	print *,sign(i2_s0,i2_c0),  usign2(i2_s0,i2_c0)
!
	print *,sign(i2_a1,i2_c1),  usign2(i2_a1,i2_c1)
	print *,sign(i2_a1,i2_cm1), usign2(i2_a1,i2_cm1)
	print *,sign(i2_a1,i2_cm10),usign2(i2_a1,i2_cm10)
	print *,sign(i2_a1,i2_c0),  usign2(i2_a1,i2_c0)
!
	print *,sign(i2_am1,i2_c1),  usign2(i2_am1,i2_c1)
	print *,sign(i2_am1,i2_cm1), usign2(i2_am1,i2_cm1)
	print *,sign(i2_am1,i2_cm10),usign2(i2_am1,i2_cm10)
	print *,sign(i2_am1,i2_c0),  usign2(i2_am1,i2_c0)
!
	print *,sign(i2_am10,i2_c1),  usign2(i2_am10,i2_c1)
	print *,sign(i2_am10,i2_cm1), usign2(i2_am10,i2_cm1)
	print *,sign(i2_am10,i2_cm10),usign2(i2_am10,i2_cm10)
	print *,sign(i2_am10,i2_c0),  usign2(i2_am10,i2_c0)
!
	print *,sign(i2_a0,i2_c1),  usign2(i2_a0,i2_c1)
	print *,sign(i2_a0,i2_cm1), usign2(i2_a0,i2_cm1)
	print *,sign(i2_a0,i2_cm10),usign2(i2_a0,i2_cm10)
	print *,sign(i2_a0,i2_c0),  usign2(i2_a0,i2_c0)
!
	print *,sign(i2_1,i2_c1),  usign2(i2_1,i2_c1)
	print *,sign(i2_1,i2_cm1), usign2(i2_1,i2_cm1)
	print *,sign(i2_1,i2_cm10),usign2(i2_1,i2_cm10)
	print *,sign(i2_1,i2_c0),  usign2(i2_1,i2_c0)
!
	print *,sign(i2_m1,i2_c1),  usign2(i2_m1,i2_c1)
	print *,sign(i2_m1,i2_cm1), usign2(i2_m1,i2_cm1)
	print *,sign(i2_m1,i2_cm10),usign2(i2_m1,i2_cm10)
	print *,sign(i2_m1,i2_c0),  usign2(i2_m1,i2_c0)
!
	print *,sign(i2_m10,i2_c1),  usign2(i2_m10,i2_c1)
	print *,sign(i2_m10,i2_cm1), usign2(i2_m10,i2_cm1)
	print *,sign(i2_m10,i2_cm10),usign2(i2_m10,i2_cm10)
	print *,sign(i2_m10,i2_c0),  usign2(i2_m10,i2_c0)
!
	print *,sign(i2_0,i2_c1),  usign2(i2_0,i2_c1)
	print *,sign(i2_0,i2_cm1), usign2(i2_0,i2_cm1)
	print *,sign(i2_0,i2_cm10),usign2(i2_0,i2_cm10)
	print *,sign(i2_0,i2_c0),  usign2(i2_0,i2_c0)
!
	print *,sign(i2_1,i2_1),  usign2(i2_1,i2_1)
	print *,sign(i2_1,i2_m1), usign2(i2_1,i2_m1)
	print *,sign(i2_1,i2_m10),usign2(i2_1,i2_m10)
	print *,sign(i2_1,i2_0),  usign2(i2_1,i2_0)
!
	print *,sign(i2_m1,i2_1),  usign2(i2_m1,i2_1)
	print *,sign(i2_m1,i2_m1), usign2(i2_m1,i2_m1)
	print *,sign(i2_m1,i2_m10),usign2(i2_m1,i2_m10)
	print *,sign(i2_m1,i2_0),  usign2(i2_m1,i2_0)
!
	print *,sign(i2_1,1),  usign2(i2_1,i2_c1)
	print *,sign(i2_1,-1), usign2(i2_1,i2_cm1)
	print *,sign(i2_1,-10),usign2(i2_1,i2_cm10)
	print *,sign(i2_1,0),  usign2(i2_1,i2_c0)
!
	print *,sign(i2_m1,1),  usign2(i2_m1,i2_c1)
	print *,sign(i2_m1,-1), usign2(i2_m1,i2_cm1)
	print *,sign(i2_m1,-10),usign2(i2_m1,i2_cm10)
	print *,sign(i2_m1,0),  usign2(i2_m1,i2_c0)
!
	print *,sign(1,i2_1),  usign2(i2_c1,i2_1)
	print *,sign(1,i2_m1), usign2(i2_c1,i2_m1)
	print *,sign(1,i2_m10),usign2(i2_c1,i2_m10)
	print *,sign(1,i2_0),  usign2(i2_c1,i2_0)
!
	i2_res = sign(-1,i2_1);  print *,i2_res,usign2(i2_cm1,i2_1)
	i2_res = sign(-1,i2_m1); print *,i2_res,usign2(i2_cm1,i2_m1)
	i2_res = sign(-1,i2_m10);print *,i2_res,usign2(i2_cm1,i2_m10)
	i2_res = sign(-1,i2_0);  print *,i2_res,usign2(i2_cm1,i2_0)
!
	end

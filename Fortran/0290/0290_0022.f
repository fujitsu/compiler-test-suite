         program main
	 implicit none
	 integer*1 i1/0/
	 integer*2 i2/0/
	 integer*1 i1c
	 call test1(i1)
	 call test2(i2)
	 i1c = 256/2
	 call test3(i1c)
	 i1c = 256/2
	 i1  = 2
	 call test4(i1c,i1)
	 print *,'PASS'
         end

	 subroutine test1(i1)
	 implicit none
	 integer*1 i1
	 integer*1,parameter::i1zero = 0
	 if( i1*i1zero /= 0.0 ) print *,' NG (1) '
	 end

	 subroutine test2(i2)
	 implicit none
	 integer*2 i2
	 integer*2,parameter::i2zero = 0
	 if( i2*i2zero /= 0.0 ) print *,' NG (2) '
	 end

	 subroutine test3(i1)
	 implicit none
	 integer*1 i1
	 integer*1,parameter::i1two = 2
	 if( i1*i1two /= 0.0 ) print *,' NG (3) '
	 end

	 subroutine test4(i1,i1c)
	 implicit none
	 integer*1 i1,i1c
	 if( i1*i1c /= 0.0 ) print *,' NG (4) '
	 end

       type st
	  integer*1 i1
	  integer*2 i2
	  real r4(3)
	  real*8 r8
	  character*2 c2
	  end type
       type (st) fst
       fst%i1 = 1
       fst%i2 = 2
       fst%r4(1) = 3
       fst%r8 = 4
       fst%c2 ='*'
       end

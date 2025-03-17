       type str2
	  real  r2(10)
          integer*4 i2
	  character*2 c2
       end type

       type str1
	  character*1 c1
          integer*4 i1
	  type (str2) member2
	  real r1(10)
       end type

       type str3
          integer*2 i3
          type (str1) member
	  character*2 c3
       endtype

       type (str3) a
       end

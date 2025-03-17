       type str1
          integer*4 i4
	  character*1 c1
       end type
       type str2
          integer*2 i2
          type (str1) member
	  character*2 c2
       endtype
       type (str2) a
       end

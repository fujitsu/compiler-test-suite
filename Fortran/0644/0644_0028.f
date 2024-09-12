       type mem
         character*5 ch5
         end type
       type str
         logical*1 l1
         type (mem) mi
         end type
       type (str) major
       major%l1 = .false.
       major%mi%ch5='*'
       end

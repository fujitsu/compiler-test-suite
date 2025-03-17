      type str_tag
        sequence
        integer*4 i04_a(5),i04_b(5)
      end type
      type(str_tag) str_a,init
      logical*4 check
      str_a=init()
      stop
      end
 
      type(str_tag) function init()
      type str_tag
        sequence
        integer*4 i04_a(5),i04_b(5)
      end type
      end

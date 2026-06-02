      type TX
	integer ap
      end type
      type(TX) pv
      call sub()
      if (pv%ap==10) print *,"OK2"
      contains
        subroutine sub()
        implicit type(TX)(c)
        type TX 
	  character*10 ac
	end type
        pv%ap = 10
        cv%ac = 'abcdefghij' 
	if (cv%ac=='abcdefghij') print *,'OK1'
        end subroutine
      end

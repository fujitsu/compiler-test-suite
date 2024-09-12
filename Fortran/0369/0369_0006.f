      SUBROUTINE SUB( IP)
	complex cq000,cq100
      DATA CQ000,CQ100 / (1,2), (3,4) / 
        print *,CQ000,CQ100
	end

        call SUB(1)
	end

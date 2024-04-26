        print *,'ok'
	end
	module mo
	contains
	  function mf()
	  mf=1
	  return
	  contains
	    subroutine mfcs
	    return
	    end subroutine
	    function mfcf()
	    mfcf=1
	    return
	    end function
	  end function
	end

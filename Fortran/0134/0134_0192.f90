  subroutine m01_sub01(dummy_func01)
     implicit character(d)
   interface
    function dummy_func01()
     implicit character(d)
    end function
   end interface
   entry ms01_ent01(dummy_func01)
   call x(dummy_func01)
  end subroutine
  subroutine m01_sub02()
     implicit character(d)
   interface
    function dummy_func01()
     implicit character(d)
    end function
   end interface
   entry ms01_ent02(dummy_func01)
   call x(dummy_func01)
  end subroutine

interface
 function dummy_func01()
     implicit character(d)
 end function
end interface

call m01_sub01(dummy_func01)
call ms01_ent01(dummy_func01)
call ms01_ent02(dummy_func01)

print *,'pass'
end

function dummy_func01()
     implicit character(d)
 dummy_func01 = '1'
end function

subroutine x(d)
     implicit character(d)
  if (d()/='1')print *,101
end

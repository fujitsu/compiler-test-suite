integer,parameter::k4=8
if (a1()/=1) print *,1
print *,'pass'
contains
      integer(k4) function a1() 
        a1=1
      end function a1
end

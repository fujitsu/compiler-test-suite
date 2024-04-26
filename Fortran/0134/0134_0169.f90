subroutine s1
 interface 
   function px1() result(r)
    character(2),pointer::r
   end function
  function   p104(x)
    import::px1
    procedure (px1),pointer :: x
   end function
 end interface
 procedure (px1),pointer :: p1
 procedure (p104),pointer :: p2
p2=>p104
p1=>px1
if (abs(p2(p1)-1.0)>0.001)print *,'error-001'
end
call s1
print *,'pass'
end
   function px1() result(r)
    character(2),pointer::r
     allocate(r)
     r='xy'
   end function
  function   p104(x)
   interface 
     function px1() result(r)
      character(2),pointer::r
      end function
   end interface
    procedure (px1),pointer :: x
    x=>px1
    if (x()/='xy')print *,1001
    p104=1.0
  end function

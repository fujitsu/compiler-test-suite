subroutine s1
 interface 
   function px1() result(r)
    character(2),pointer::r
   end function
  function   p104()
    import px1
    procedure (px1),pointer :: p104
   end function
 end interface
 procedure (px1),pointer :: p1
 procedure (p104),pointer :: p2
p2=>p104
p1=>p2()
if (p1()/='xy')print *,'error-001'
end
call s1
print *,'pass'
end
   function px1() result(r)
    character(2),pointer::r
     allocate(r)
     r='xy'
   end function
  function   p104()
   interface 
     function px1() result(r)
      character(2),pointer::r
      end function
   end interface
    procedure (px1),pointer :: p104
    p104=>px1
  end function

interface
subroutine sub(a,b,i)
 integer ::b(3)
 interface 
  function a(bb)
    integer ::bb(3)
    integer ::a(3)
  end function
 end interface
end subroutine
end interface
interface 
  function a1(bb) result(a)
    integer ::bb(3)
    integer ::a(3)
  end function
end interface
interface 
  function a2(bb) result(a)
    integer ::bb(3)
    integer ::a(3)
  end function
end interface
interface 
  function a3(bb) result(a)
    integer ::bb(3)
    integer ::a(3)
  end function
end interface
interface 
  function a4(bb) result(a)
    integer ::bb(3)
    integer ::a(3)
  end function
end interface
integer b(3)
b=(/10,20,30/)
call sub(a1,b,1)
call sub(a2,b,2)
call sub(a3,b,3)
call sub(a4,b,4)
print *,'pass'
end
subroutine sub(a,b,i)
 integer ::b(3)
 interface 
  function a(bb)
    integer ::bb(3)
    integer ::a(3)
  end function
 end interface
select case(i)
case (1)
if (any(a(b)/=(/10,20,30/)))print *,'error-01'
case (2)
if (any(a(b)/=(/10,20,30/)*2))print *,'error-02'
case (3)
if (any(a(b)/=(/10,20,30/)*3))print *,'error-03'
case (4)
if (any(a(b)/=(/10,20,30/)*4))print *,'error-04'
end select
end
function a1(b) result(a)
 integer ::b(3)
 integer ::a(3)
 a=b
end 
function a2(b) result(a)
 integer ::b(3)
 integer ::a(3)
 a=b*2
end 
function a3(b) result(a)
 integer ::b(3)
 integer ::a(3)
 a=b*3
end 
function a4(b) result(a)
 integer ::b(3)
 integer ::a(3)
 a=b*4
end 

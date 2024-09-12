interface
 function func(i) result(r)
  interface
   function func1(i) result(j)
    integer i,j
   end function
  end interface
  integer i,r
 end function
end interface

integer i,j
i = 1
j=func(i)

print *,'pass'

end

recursive function func(i) result(r)
 interface
  function func1(i) result(j)
   integer i,j
  end function
 end interface
 integer :: i,r
 procedure(func1),pointer :: pp
 entry ent(i) result(j)
 pp => ent
 if (i.ne.1) i = pp(1)
 r=i
end function

function func1(i) result(j)
 integer i,j
 j=i
end function

interface
  function sub() result(ii)
    integer ::ii
  end function
end interface
external :: p1
integer,pointer :: p1
p1=>sub
ii1 = 1
ii2 = 2
ii1 = sub()
ii2 = p1()
if (ii1.ne.ii2) print *,'fail'
print *,"pass"
end
function sub() result(ii)
 integer :: ii
 ii= 3
endfunction

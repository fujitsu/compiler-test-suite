interface
  subroutine sub(i)
   integer :: i
  end subroutine
  function fun() result(iii)
   integer :: iii
  end
end interface
integer :: ii1,ii2
external :: p1
pointer ::p1
p1=>fun
 ii1 = fun()
p1=>sub
 call sub(ii2)
 if (ii1.ne.ii2) print *,'fail'
 print *,"pass"
end
function fun() result(iii)
 iii=3 
end
subroutine sub(i)
 i=3
end subroutine

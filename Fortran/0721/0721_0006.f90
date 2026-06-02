module mod
  external :: p1
  pointer :: p1
endmodule

integer ::p1
call sss()
end
subroutine sss()
use mod
interface
  subroutine sub(ii)
  end subroutine
end interface
p1=>sub
ii1 = 1
ii2 = 2
call sub(ii1)
call p1(ii2)
if (ii1.ne.ii2) print *,'fail'
print *,"pass"
end
subroutine sub(ii)
  ii =3
endsubroutine 

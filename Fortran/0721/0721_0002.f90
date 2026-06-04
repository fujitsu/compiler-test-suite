interface
  subroutine sub(ii)
  end subroutine
end interface
pointer :: p1
external :: p1
p1=>sub
ii1 = 1
ii2 = 1
call sub(ii1)
call p1(ii2)
if (ii1.ne.ii2) print *,'fail'
print *,"pass"
end
subroutine sub(ii)
  ii =3
endsubroutine 

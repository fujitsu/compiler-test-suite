procedure(sss) ,pointer :: ii
procedure(rrr) ,pointer :: jj
ii=>sss
jj=>rrr
contains
function   sss() result(iaa)
end function   
subroutine rrr()
end subroutine
subroutine sub()
procedure(sss) ,pointer :: ii
procedure(rrr) ,pointer :: jj
ii=>sss
jj=>rrr
end subroutine
end

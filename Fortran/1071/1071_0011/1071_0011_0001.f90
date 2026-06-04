subroutine sub
procedure(sss) ,pointer :: ii
procedure(rrr) ,pointer :: jj
contains
recursive function   sss() result(iaa)
ii=>sss
end function
recursive subroutine rrr()
jj=>rrr
end subroutine
end

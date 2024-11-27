program pro
character(len=3) ::kk(2)
kk='abc'
call s1(kk(1),3)
contains
subroutine s1(k,l)
character(len=l),value:: k(2)
print *,k
end subroutine
end

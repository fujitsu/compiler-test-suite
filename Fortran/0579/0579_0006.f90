interface
subroutine s1(d1)
integer :: d1
end subroutine
end interface
procedure(s1),pointer :: ptr
procedure(ptr),pointer:: prc_ptr
procedure(prc_ptr),pointer:: prc_nes

call sub(prc_ptr,prc_nes)
contains
subroutine sub(dmy,dmy2)
procedure(ptr),pointer:: dmy,dmy2

integer :: ii=4
integer :: jj=5
dmy=>s1
dmy2=>s1
call dmy(ii)
call dmy2(jj)
if(ii .ne. 6)print*,"101"
if(jj .ne. 7)print*,"102"
print *,'pass'
end subroutine
end
    
subroutine s1(d1)
integer :: d1
d1=d1+2
end subroutine

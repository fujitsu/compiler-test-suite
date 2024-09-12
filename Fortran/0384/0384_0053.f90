interface
function ifun(i)
character(10) :: ifun
end function
function jfun()
end function
end interface
 procedure(ifun) ,pointer :: ii => null()
 procedure(ifun)  :: jj
 procedure(jfun) ,pointer :: jjjj => null()
 procedure(jfun)  :: kkkk
 external         :: vvvv
 integer ,pointer :: sss
ii=>ifun
jjjj=>jfun
if (associated(ii,ifun).neqv..true.) print *,"err5"
if (associated(jjjj,jfun).neqv..true.) print *,"err6"
if (associated(jjjj,ifun).eqv..true.) print *,"err6a"
print *,"pass"
end

function ifun(i) result(ifunc)
character(10) :: ifunc
entry jj(i) result(ifunc)
ifunc="a"
end function
function jfun()
entry kkkk()
entry vvvv()
jfun=1
end function


call sub01()
print *,'pass'
end

subroutine sub01()
integer a(10),b(10)
b=(/1,2,3,4,5,6,7,8,9,10/)
a=1
a=ifun01((/(1,kk=1,b(10))/)) 
do k=1,10 ; if (a(k).ne.k+ 1) print *,'err1';enddo
a=ifun01((/a/)) 
do k=1,10 ; if (a(k).ne.k+ 1) print *,'err2';enddo
a=ifun01(a) 
do k=1,10 ; if (a(k).ne.k+ 1) print *,'err3';enddo
a=ifun01(a(b)) 
do k=1,10 ; if (a(k).ne.k+ 1) print *,'err4';enddo
a=ifun01(a(1:10)+1) 
do k=1,10 ; if (a(k).ne.k+ 1) print *,'err4';enddo
a=ifun01(a(1:10)) 
do k=1,10 ; if (a(k).ne.k+ 1) print *,'err5';enddo
a(2:)=ifun02(a(2:3)) 
do k=2,10 ; if (a(k).ne.k+ 2) print *,'err6';enddo
a(2:)=ifun03(a(2:3),a) 
do k=2,10 ; if (a(k).ne.k+ 2) print *,'err7';enddo
contains
function ifun01(i) result(ia)
integer i(:)
integer ia(size(i))
ia=(/(j+ 1,j=1,10)/)
end function
function ifun02(i) result(ia)
integer i(:)
integer ia(size(i):10)
ia=(/(j+ 2,j=2,10)/)
end function
function ifun03(i,ii) result(ia)
integer i(:),ii(:)
integer ia(size(i):size(ii))
ia=(/(j+ 2,j=2,10)/)
end function
end

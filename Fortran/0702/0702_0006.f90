call sub01()
call sub02()
print *,'pass'
end

subroutine sub01()
integer a(10),b(10)
b=(/1,2,3,4,5,6,7,8,9,10/)
a=b
a=ifun01(1,10) 
do k=1,10 ; if (a(k).ne.k+ 1) print *,'err';enddo
a=ifun02(b(1),10) 
do k=1,10 ; if (a(k).ne.k+ 2) print *,'err';enddo
a=ifun03(1,b(10)) 
do k=1,10 ; if (a(k).ne.k+ 3) print *,'err';enddo
a=ifun04(1,b(10)) 
do k=1,10 ; if (a(k).ne.k+ 4) print *,'err';enddo
a=ifun05(1,b(b(10))) 
do k=1,10 ; if (a(k).ne.k+ 5) print *,'err';enddo
a=ifun06(b(b(1)),10) 
do k=1,10 ; if (a(k).ne.k+ 6) print *,'err';enddo
a=ifun07(b(b(1)),10) 
do k=1,10 ; if (a(k).ne.k+ 7) print *,'err';enddo
a=ifun08(b(b(1)),10) 
do k=1,10 ; if (a(k).ne.k+ 8) print *,'err';enddo
a=ifun09(b(b(1)),10) 
do k=1,10 ; if (a(k).ne.k+ 9) print *,'err';enddo
contains
function ifun01(i,k) result(ia)
integer ia(1:10)
ia=(/(j+ 1,j=1,10)/)
end function
function ifun02(i,k) result(ia)
integer ia(i:10)
ia=(/(j+ 2,j=1,10)/)
end function
function ifun03(i,k) result(ia)
integer ia(1:k)
ia=(/(j+ 3,j=1,10)/)
end function
function ifun04(i,k) result(ia)
integer ia(int(i):10)
ia=(/(j+ 4,j=1,10)/)
end function
function ifun05(i,k) result(ia)
integer ia(1:int(k))
ia=(/(j+ 5,j=1,10)/)
end function
function ifun06(i,k) result(ia)
integer ia(i:k)
ia=(/(j+ 6,j=1,10)/)
end function
function ifun07(i,k) result(ia)
integer ia(i:int(k))
ia=(/(j+ 7,j=1,10)/)
end function
function ifun08(i,k) result(ia)
integer ia(int(i):k)
ia=(/(j+ 8,j=1,10)/)
end function
function ifun09(i,k) result(ia)
integer ia(int(i):int(k))
ia=(/(j+ 9,j=1,10)/)
end function
end
subroutine sub02()
integer a(10),b(10)
b=(/1,2,3,4,5,6,7,8,9,10/)
a=b
a=ifun01(1,10) 
do k=1,10 ; if (a(k).ne.k+ 1) print *,'err';enddo
a=ifun02(b(1),10) 
do k=1,10 ; if (a(k).ne.k+ 2) print *,'err';enddo
a=ifun03(1,b(10)) 
do k=1,10 ; if (a(k).ne.k+ 3) print *,'err';enddo
a=ifun04(1,b(10)) 
do k=1,10 ; if (a(k).ne.k+ 4) print *,'err';enddo
a=ifun05(1,b(b(10))) 
do k=1,10 ; if (a(k).ne.k+ 5) print *,'err';enddo
a=ifun06(b(b(1)),10) 
do k=1,10 ; if (a(k).ne.k+ 6) print *,'err';enddo
a=ifun07(b(b(1)),10) 
do k=1,10 ; if (a(k).ne.k+ 7) print *,'err';enddo
a=ifun08(b(b(1)),10) 
do k=1,10 ; if (a(k).ne.k+ 8) print *,'err';enddo
a=ifun09(b(b(1)),10) 
do k=1,10 ; if (a(k).ne.k+ 9) print *,'err';enddo
contains
function ifun01(i,k) result(ia)
integer ia(1:10)
ia=(/(j+ 1,j=1,10)/)
end function
function ifun02(i,k) result(ia)
integer ia(i+0:10)
ia=(/(j+ 2,j=1,10)/)
end function
function ifun03(i,k) result(ia)
integer ia(1:k+0)
ia=(/(j+ 3,j=1,10)/)
end function
function ifun04(i,k) result(ia)
integer ia(int(i+0):10)
ia=(/(j+ 4,j=1,10)/)
end function
function ifun05(i,k) result(ia)
integer ia(1:int(k+0))
ia=(/(j+ 5,j=1,10)/)
end function
function ifun06(i,k) result(ia)
integer ia(i+0:k+0)
ia=(/(j+ 6,j=1,10)/)
end function
function ifun07(i,k) result(ia)
integer ia(i:int(k)+0)
ia=(/(j+ 7,j=1,10)/)
end function
function ifun08(i,k) result(ia)
integer ia(int(i)+0:k)
ia=(/(j+ 8,j=1,10)/)
end function
function ifun09(i,k) result(ia)
integer ia(int(i)+0:int(k+0))
ia=(/(j+ 9,j=1,10)/)
end function
end

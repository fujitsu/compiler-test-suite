call sub01()
call sub02()
call sub03()
call sub04()
print *,'pass'
end

subroutine sub01()
integer a(10)
a=ifun01(1) 
do k=1,10 ; if (a(k).ne.k+ 1) print *,'err';enddo
a=ifun02(1) 
do k=1,10 ; if (a(k).ne.k+ 2) print *,'err';enddo
a=ifun03(10) 
do k=1,10 ; if (a(k).ne.k+ 3) print *,'err';enddo
a=ifun04(1,10) 
do k=1,10 ; if (a(k).ne.k+ 4) print *,'err';enddo
a=ifun05(1,10) 
do k=1,10 ; if (a(k).ne.k+ 5) print *,'err';enddo
a=ifun06(10) 
do k=1,10 ; if (a(k).ne.k+ 6) print *,'err';enddo
a=ifun07(21) 
do k=1,10 ; if (a(k).ne.k+ 7) print *,'err';enddo
a=ifun08(20) 
do k=1,10 ; if (a(k).ne.k+ 8) print *,'err';enddo
contains
function ifun01(i) result(ia)
integer ia(i:10)
ia=(/(j+ 1,j=1,10)/)
end function
function ifun02(i) result(ia)
integer ia(+i:10)
ia=(/(j+ 2,j=1,10)/)
end function
function ifun03(i) result(ia)
integer ia(1:i)
ia=(/(j+ 3,j=1,10)/)
end function
function ifun04(i,ii) result(ia)
integer ia(i:ii)
ia=(/(j+ 4,j=1,10)/)
end function
function ifun05(i,ii) result(ia)
integer ia(i:+ii)
ia=(/(j+ 5,j=1,10)/)
end function
function ifun06(i) result(ia)
integer ia(i)
ia=(/(j+ 6,j=1,10)/)
end function
function ifun07(i) result(ia)
integer ia(i:30)
ia=(/(j+ 7,j=1,10)/)
end function
function ifun08(i) result(ia)
integer ia(11:i)
ia=(/(j+ 8,j=1,10)/)
end function
end

subroutine sub02()
integer a(10)
a=ifun01(int(1)) 
do k=1,10 ; if (a(k).ne.k+ 1) print *,'err';enddo
a=ifun02(int(1)) 
do k=1,10 ; if (a(k).ne.k+ 2) print *,'err';enddo
a=ifun03(int(10)) 
do k=1,10 ; if (a(k).ne.k+ 3) print *,'err';enddo
a=ifun04(int(1),int(10)) 
do k=1,10 ; if (a(k).ne.k+ 4) print *,'err';enddo
a=ifun05(int(1),int(10)) 
do k=1,10 ; if (a(k).ne.k+ 5) print *,'err';enddo
a=ifun06(int(10)) 
do k=1,10 ; if (a(k).ne.k+ 6) print *,'err';enddo
a=ifun07(int(21)) 
do k=1,10 ; if (a(k).ne.k+ 7) print *,'err';enddo
a=ifun08(int(20)) 
do k=1,10 ; if (a(k).ne.k+ 8) print *,'err';enddo
contains
function ifun01(i) result(ia)
integer ia(int(i):10)
ia=(/(j+ 1,j=1,10)/)
end function
function ifun02(i) result(ia)
integer ia(int(+i):10)
ia=(/(j+ 2,j=1,10)/)
end function
function ifun03(i) result(ia)
integer ia(int(1):i)
ia=(/(j+ 3,j=1,10)/)
end function
function ifun04(i,ii) result(ia)
integer ia(int(i):ii)
ia=(/(j+ 4,j=1,10)/)
end function
function ifun05(i,ii) result(ia)
integer ia(int(i):+ii)
ia=(/(j+ 5,j=1,10)/)
end function
function ifun06(i) result(ia)
integer ia(int(i))
ia=(/(j+ 6,j=1,10)/)
end function
function ifun07(i) result(ia)
integer ia(int(i):30)
ia=(/(j+ 7,j=1,10)/)
end function
function ifun08(i) result(ia)
integer ia(int(11):i)
ia=(/(j+ 8,j=1,10)/)
end function
end

subroutine sub03()
integer a(10)
a=ifun01(int(1)+0) 
do k=1,10 ; if (a(k).ne.k+ 1) print *,'err';enddo
a=ifun02(int(1)+0) 
do k=1,10 ; if (a(k).ne.k+ 2) print *,'err';enddo
a=ifun03(int(10)+0) 
do k=1,10 ; if (a(k).ne.k+ 3) print *,'err';enddo
a=ifun04(int(1)+0,int(10)+0) 
do k=1,10 ; if (a(k).ne.k+ 4) print *,'err';enddo
a=ifun05(int(1)+0,int(10)+0) 
do k=1,10 ; if (a(k).ne.k+ 5) print *,'err';enddo
a=ifun06(int(10)+0) 
do k=1,10 ; if (a(k).ne.k+ 6) print *,'err';enddo
a=ifun07(int(21)+0) 
do k=1,10 ; if (a(k).ne.k+ 7) print *,'err';enddo
a=ifun08(int(20)+0) 
do k=1,10 ; if (a(k).ne.k+ 8) print *,'err';enddo
contains
function ifun01(i) result(ia)
integer ia(int(i):int(10))
ia=(/(j+ 1,j=1,10)/)
end function
function ifun02(i) result(ia)
integer ia(int(+i):int(10))
ia=(/(j+ 2,j=1,10)/)
end function
function ifun03(i) result(ia)
integer ia(int(1):int(i))
ia=(/(j+ 3,j=1,10)/)
end function
function ifun04(i,ii) result(ia)
integer ia(int(i):int(ii))
ia=(/(j+ 4,j=1,10)/)
end function
function ifun05(i,ii) result(ia)
integer ia(int(i):int(+ii))
ia=(/(j+ 5,j=1,10)/)
end function
function ifun06(i) result(ia)
integer ia(int(i))
ia=(/(j+ 6,j=1,10)/)
end function
function ifun07(i) result(ia)
integer ia(int(i):int(30))
ia=(/(j+ 7,j=1,10)/)
end function
function ifun08(i) result(ia)
integer ia(int(11):int(i))
ia=(/(j+ 8,j=1,10)/)
end function
end

subroutine sub04()
logical func01,func02,func03,func04,func05,func06,func07,func08
logical func11,func12,func13,func14,func15,func16,func17,func18
logical func21,func22,func23,func24,func25,func26,func27,func28
func01(ia1,ia2) = func( ifun01(ia1),ia2 )
func02(ia1,ia2) = func( ifun02(ia1),ia2 )
func03(ia1,ia2) = func( ifun03(ia1),ia2 )
func04(ia1,ia2,ia3) = func( ifun04(ia1,ia2),ia3 )
func05(ia1,ia2,ia3) = func( ifun05(ia1,ia2),ia3 )
func06(ia1,ia2) = func( ifun06(ia1),ia2 )
func07(ia1,ia2) = func( ifun07(ia1),ia2 )
func08(ia1,ia2) = func( ifun08(ia1),ia2 )
func11(ia1,ia2) = func( ifun01(ia1+1),ia2 )
func12(ia1,ia2) = func( ifun02(ia1+1),ia2 )
func13(ia1,ia2) = func( ifun03(ia1+1),ia2 )
func14(ia1,ia2,ia3) = func( ifun04(ia1+1,ia2),ia3 )
func15(ia1,ia2,ia3) = func( ifun05(ia1+1,ia2),ia3 )
func16(ia1,ia2) = func( ifun06(ia1+1),ia2 )
func17(ia1,ia2) = func( ifun07(ia1+1),ia2 )
func18(ia1,ia2) = func( ifun08(ia1+1),ia2 )
func21(ia1,ia2) = func( ifun01(int(ia1)),ia2 )
func22(ia1,ia2) = func( ifun02(int(ia1)),ia2 )
func23(ia1,ia2) = func( ifun03(int(ia1)),ia2 )
func24(ia1,ia2,ia3) = func( ifun04(int(ia1),ia2),ia3 )
func25(ia1,ia2,ia3) = func( ifun05(int(ia1),ia2),ia3 )
func26(ia1,ia2) = func( ifun06(int(ia1)),ia2 )
func27(ia1,ia2) = func( ifun07(int(ia1)),ia2 )
func28(ia1,ia2) = func( ifun08(int(ia1)),ia2 )
if (func01(1,1).eqv..true.) print *,'sub04 err' 
if (func02(1,2).eqv..true.) print *,'sub04 err' 
if (func03(10,3).eqv..true.) print *,'sub04 err' 
if (func04(1,10,4).eqv..true.) print *,'sub04 err' 
if (func05(1,10,5).eqv..true.) print *,'sub04 err' 
if (func06(10,6).eqv..true.) print *,'sub04 err' 
if (func07(21,7).eqv..true.) print *,'sub04 err' 
if (func08(20,8).eqv..true.) print *,'sub04 err' 
if (func01(int(1),1).eqv..true.) print *,'sub04 err' 
if (func02(int(1),2).eqv..true.) print *,'sub04 err' 
if (func03(int(10),3).eqv..true.) print *,'sub04 err' 
if (func04(1,int(10),4).eqv..true.) print *,'sub04 err' 
if (func05(1,int(10),5).eqv..true.) print *,'sub04 err' 
if (func06(int(10),6).eqv..true.) print *,'sub04 err' 
if (func07(int(21),7).eqv..true.) print *,'sub04 err' 
if (func08(int(20),8).eqv..true.) print *,'sub04 err' 
if (func11(0,1).eqv..true.) print *,'sub04 err' 
if (func12(0,2).eqv..true.) print *,'sub04 err' 
if (func13( 9,3).eqv..true.) print *,'sub04 err' 
if (func14(0,10,4).eqv..true.) print *,'sub04 err' 
if (func15(0,10,5).eqv..true.) print *,'sub04 err' 
if (func16( 9,6).eqv..true.) print *,'sub04 err' 
if (func17(20,7).eqv..true.) print *,'sub04 err' 
if (func18(19,8).eqv..true.) print *,'sub04 err' 
if (func21(1,1).eqv..true.) print *,'sub04 err'
if (func22(1,2).eqv..true.) print *,'sub04 err'
if (func23(10,3).eqv..true.) print *,'sub04 err'
if (func24(1,10,4).eqv..true.) print *,'sub04 err'
if (func25(1,10,5).eqv..true.) print *,'sub04 err'
if (func26(10,6).eqv..true.) print *,'sub04 err'
if (func27(21,7).eqv..true.) print *,'sub04 err'
if (func28(20,8).eqv..true.) print *,'sub04 err'
contains
function func(ia,ib) 
logical func
integer ia(:)
func=.false.
do k=1,10 ; if (ia(k).ne.k+ ib) func = .true. ;enddo
end function
function ifun01(i) result(ia)
integer ia(int(i):int(10))
ia=(/(j+ 1,j=1,10)/)
end function
function ifun02(i) result(ia)
integer ia(int(+i):int(10))
ia=(/(j+ 2,j=1,10)/)
end function
function ifun03(i) result(ia)
integer ia(int(1):int(i))
ia=(/(j+ 3,j=1,10)/)
end function
function ifun04(i,ii) result(ia)
integer ia(int(i):int(ii))
ia=(/(j+ 4,j=1,10)/)
end function
function ifun05(i,ii) result(ia)
integer ia(int(i):int(+ii))
ia=(/(j+ 5,j=1,10)/)
end function
function ifun06(i) result(ia)
integer ia(int(i))
ia=(/(j+ 6,j=1,10)/)
end function
function ifun07(i) result(ia)
integer ia(int(i):int(30))
ia=(/(j+ 7,j=1,10)/)
end function
function ifun08(i) result(ia)
integer ia(int(11):int(i))
ia=(/(j+ 8,j=1,10)/)
end function
end

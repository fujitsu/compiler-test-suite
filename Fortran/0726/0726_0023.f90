call test01()
print *,'pass'
end
subroutine test01()
integer(kind=1) arr(2,3)
integer(kind=1) arrb(2,2,2)
arrb(1,1,1)=1
arrb(2,1,1)=2
arrb(1,2,1)=3
arrb(2,2,1)=4
arrb(1,1,2)=5
arrb(2,1,2)=6
arrb(1,2,2)=7
arrb(2,2,2)=8
call sub_ans8 (minval(arrb,.true.))
arr(1,1)=1; arr(2,1)=2; arr(1,2)=3; arr(2,2)=4; arr(1,3)=5; arr(2,3)=6
call sub_ar_2(minval(arr,2))
call sub_ar_2(minval(arr,dim=2))
call sub_ar_2(minval(array=arr,dim=2))
call sub_ar_2(minval(dim=2,array=arr))
call sub_ar_2(minval(arr,2,.true._1))
call sub_ar_2(minval(arr,2,.true._2))
call sub_ar_2(minval(arr,2,.true._4))
call sub_ar_2(minval(arr,2,.true._8))
call sub_ar_2(minval(arr,2,mask=.true._1))
call sub_ar_2(minval(arr,dim=2,mask=.true._1))
call sub_ar_2(minval(array=arr,dim=2,mask=.true._1))
call sub_ar_2(minval(mask=.true._1,array=arr,dim=2))
call sub_scl (minval(arr))
call sub_scl (minval(array=arr))
call sub_ar_3(minval(arr,1))
call sub_ar_3(minval(arr,dim=1))
call sub_ar_3(minval(array=arr,dim=1))
call sub_ar_2m(minval(arr,2,.false._1))
call sub_ar_2m(minval(arr,2,.false._2))
call sub_ar_2m(minval(arr,2,.false._4))
call sub_ar_2m(minval(arr,2,.false._8))
call sub_ans1 (minval(arr,arr==1))
call sub_ans1 (minval(arr,mask=arr==1))
call sub_ans1 (minval(array=arr,mask=arr==1))
call sub_ans1 (minval(mask=arr==1,array=arr))
call sub_ans6 (minval(arr,.true.))
call sub_ans6 (minval(arr,mask=.true.))
call sub_ans6 (minval(array=arr,mask=.true.))
call sub_ansm (minval(arr,.false._1))
call sub_ansm (minval(arr,.false._2))
call sub_ansm (minval(arr,.false._4))
call sub_ansm (minval(arr,.false._8))
contains
subroutine sub_ansm(i)
integer(kind=1) i
if (i.ne.127) write(6,*) "NG"
end subroutine
subroutine sub_ans8(i)
integer(kind=1) i
if (i.ne.1) write(6,*) "NG"
end subroutine
subroutine sub_ans6(i)
integer(kind=1) i
if (i.ne.1) write(6,*) "NG"
end subroutine
subroutine sub_ans1(i)
integer(kind=1) i
if (i.ne.1) write(6,*) "NG"
end subroutine
subroutine sub_ar_3(i)
integer(kind=1) i(3)
if (i(1).ne.1) write(6,*) "NG"
if (i(2).ne.3) write(6,*) "NG"
if (i(3).ne.5) write(6,*) "NG"
end subroutine
subroutine sub_ar_2m(i)
integer(kind=1) i(2)
if (i(1).ne.127) write(6,*) "NG"
if (i(2).ne.127) write(6,*) "NG"
end subroutine
subroutine sub_ar_2(i)
integer(kind=1) i(2)
if (i(1).ne.1) write(6,*) "NG"
if (i(2).ne.2) write(6,*) "NG"
end subroutine
subroutine sub_scl(i)
integer(kind=1) i
if (i.ne.1) write(6,*) "NG"
end subroutine
end

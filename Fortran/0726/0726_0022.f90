call test01()
call test02()
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
call sub_ans8 (maxval(arrb,.true.))
arr(1,1)=1; arr(2,1)=2; arr(1,2)=3; arr(2,2)=4; arr(1,3)=5; arr(2,3)=6
call sub_ar_2(maxval(arr,2))
call sub_ar_2(maxval(arr,dim=2))
call sub_ar_2(maxval(array=arr,dim=2))
call sub_ar_2(maxval(dim=2,array=arr))
call sub_ar_2(maxval(arr,2,.true._1))
call sub_ar_2(maxval(arr,2,.true._2))
call sub_ar_2(maxval(arr,2,.true._4))
call sub_ar_2(maxval(arr,2,.true._8))
call sub_ar_2(maxval(arr,2,mask=.true._1))
call sub_ar_2(maxval(arr,dim=2,mask=.true._1))
call sub_ar_2(maxval(array=arr,dim=2,mask=.true._1))
call sub_ar_2(maxval(mask=.true._1,array=arr,dim=2))
call sub_scl (maxval(arr))
call sub_scl (maxval(array=arr))
call sub_ar_3(maxval(arr,1))
call sub_ar_3(maxval(arr,dim=1))
call sub_ar_3(maxval(array=arr,dim=1))
call sub_ar_2m(maxval(arr,2,.false._1))
call sub_ar_2m(maxval(arr,2,.false._2))
call sub_ar_2m(maxval(arr,2,.false._4))
call sub_ar_2m(maxval(arr,2,.false._8))
call sub_ans1 (maxval(arr,arr==1))
call sub_ans1 (maxval(arr,mask=arr==1))
call sub_ans1 (maxval(array=arr,mask=arr==1))
call sub_ans1 (maxval(mask=arr==1,array=arr))
call sub_ans6 (maxval(arr,.true.))
call sub_ans6 (maxval(arr,mask=.true.))
call sub_ans6 (maxval(array=arr,mask=.true.))
call sub_ansm (maxval(arr,.false._1))
call sub_ansm (maxval(arr,.false._2))
call sub_ansm (maxval(arr,.false._4))
call sub_ansm (maxval(arr,.false._8))
contains
subroutine sub_ansm(i)
integer(kind=1) i
if (i.ne.-128) write(6,*) "NG"
end subroutine
subroutine sub_ans8(i)
integer(kind=1) i
if (i.ne.8) write(6,*) "NG"
end subroutine
subroutine sub_ans6(i)
integer(kind=1) i
if (i.ne.6) write(6,*) "NG"
end subroutine
subroutine sub_ans1(i)
integer(kind=1) i
if (i.ne.1) write(6,*) "NG"
end subroutine
subroutine sub_ar_3(i)
integer(kind=1) i(3)
if (i(1).ne.2) write(6,*) "NG"
if (i(2).ne.4) write(6,*) "NG"
if (i(3).ne.6) write(6,*) "NG"
end subroutine
subroutine sub_ar_2m(i)
integer(kind=1) i(2)
if (i(1).ne.-128) write(6,*) "NG"
if (i(2).ne.-128) write(6,*) "NG"
end subroutine
subroutine sub_ar_2(i)
integer(kind=1) i(2)
if (i(1).ne.5) write(6,*) "NG"
if (i(2).ne.6) write(6,*) "NG"
end subroutine
subroutine sub_scl(i)
integer(kind=1) i
if (i.ne.6) write(6,*) "NG"
end subroutine
end
subroutine test02()
integer(kind=4) arr(2,3)
integer(kind=4) arrb(2,2,2)
arrb(1,1,1)=1
arrb(2,1,1)=2
arrb(1,2,1)=3
arrb(2,2,1)=4
arrb(1,1,2)=5
arrb(2,1,2)=6
arrb(1,2,2)=7
arrb(2,2,2)=8
call sub_ans8 (maxval(arrb,.true.))
arr(1,1)=1; arr(2,1)=2; arr(1,2)=3; arr(2,2)=4; arr(1,3)=5; arr(2,3)=6
call sub_ar_2(maxval(arr,2))
call sub_ar_2(maxval(arr,dim=2))
call sub_ar_2(maxval(array=arr,dim=2))
call sub_ar_2(maxval(dim=2,array=arr))
call sub_ar_2(maxval(arr,2,.true._1))
call sub_ar_2(maxval(arr,2,.true._2))
call sub_ar_2(maxval(arr,2,.true._4))
call sub_ar_2(maxval(arr,2,.true._8))
call sub_ar_2(maxval(arr,2,mask=.true._1))
call sub_ar_2(maxval(arr,dim=2,mask=.true._1))
call sub_ar_2(maxval(array=arr,dim=2,mask=.true._1))
call sub_ar_2(maxval(mask=.true._1,array=arr,dim=2))
call sub_scl (maxval(arr))
call sub_scl (maxval(array=arr))
call sub_ar_3(maxval(arr,1))
call sub_ar_3(maxval(arr,dim=1))
call sub_ar_3(maxval(array=arr,dim=1))
call sub_ar_2m(maxval(arr,2,.false._1))
call sub_ar_2m(maxval(arr,2,.false._2))
call sub_ar_2m(maxval(arr,2,.false._4))
call sub_ar_2m(maxval(arr,2,.false._8))
call sub_ans1 (maxval(arr,arr==1))
call sub_ans1 (maxval(arr,mask=arr==1))
call sub_ans1 (maxval(array=arr,mask=arr==1))
call sub_ans1 (maxval(mask=arr==1,array=arr))
call sub_ans6 (maxval(arr,.true.))
call sub_ans6 (maxval(arr,mask=.true.))
call sub_ans6 (maxval(array=arr,mask=.true.))
call sub_ansm (maxval(arr,.false._1))
call sub_ansm (maxval(arr,.false._2))
call sub_ansm (maxval(arr,.false._4))
call sub_ansm (maxval(arr,.false._8))
contains
subroutine sub_ansm(i)
integer(kind=4) i
if (i.ne.z'80000000') write(6,*) "NG"
end subroutine
subroutine sub_ans8(i)
integer(kind=4) i
if (i.ne.8) write(6,*) "NG"
end subroutine
subroutine sub_ans6(i)
integer(kind=4) i
if (i.ne.6) write(6,*) "NG"
end subroutine
subroutine sub_ans1(i)
integer(kind=4) i
if (i.ne.1) write(6,*) "NG"
end subroutine
subroutine sub_ar_3(i)
integer(kind=4) i(3)
if (i(1).ne.2) write(6,*) "NG"
if (i(2).ne.4) write(6,*) "NG"
if (i(3).ne.6) write(6,*) "NG"
end subroutine
subroutine sub_ar_2m(i)
integer(kind=4) i(2),j
parameter (j=z'80000000')
if (i(1).ne.j) write(6,*) "NG"
if (i(2).ne.j) write(6,*) "NG"
end subroutine
subroutine sub_ar_2(i)
integer(kind=4) i(2)
if (i(1).ne.5) write(6,*) "NG"
if (i(2).ne.6) write(6,*) "NG"
end subroutine
subroutine sub_scl(i)
integer(kind=4) i
if (i.ne.6) write(6,*) "NG"
end subroutine
end

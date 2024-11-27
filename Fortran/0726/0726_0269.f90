 parameter(im=65000)
 character*(im),parameter::a=repeat('1',im)
 character*(im),parameter::b=a(:im-1)//'2'
 character*(im) fun1
 if (fun1(a,b)/='3'//a(:im-1))write(6,*) "NG"
 print *,'pass'
 end
 function fun1(a1,a2)
 parameter(im=65000)
 character*(*) a1,a2,fun1
 character ::c1='1'
 if (len(a1)/=im)write(6,*) "NG"
 if (len(a2)/=im)write(6,*) "NG"
 if (len(fun1)/=im)write(6,*) "NG"
 if (a1/=repeat(c1,im))write(6,*) "NG"
 if (a2/=a1(1:im-1)//'2')write(6,*) "NG"
 fun1='3'//a1
 end function

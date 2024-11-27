complex a(2),x
complex,pointer:: b(:),bb
a=(/(1,2),(3,4)/)
allocate(b(2),bb)
b=(/(1,2),(3,4)/)
bb=(3,4)
x=(5,6)
call s1(x,a(2))
call s1(x,a(2)+a(2)-a(2))
call s1(x )
call s2(x,a    )
call s2(x,a+a-a)
call s2(x )
call s3(x,a)
call s3(x )
call s4(x,bb)
call s4(x )
call s5(x,b)
call s5(x )
print *,'pass'
contains
 subroutine s2(x,a)
 complex,optional,dimension(2)::a
 complex x;if (abs(x-(5,6))>0.001)write(6,*) "NG"
 if (present(a)) then
   if (any(abs(a-(/(1,2),(3,4)/))>0.0001))write(6,*) "NG"
 endif
end subroutine
 subroutine s1(x,a)
 complex,optional::a
 complex x;if (abs(x-(5,6))>0.001)write(6,*) "NG"
 if (present(a)) then
   if ((abs(a-(3,4))>0.0001))write(6,*) "NG"
 endif
end subroutine
 subroutine s3(x,a)
 complex,optional,dimension(:)::a
 complex x;if (abs(x-(5,6))>0.001)write(6,*) "NG"
 if (present(a)) then
   if (any(abs(a-(/(1,2),(3,4)/))>0.0001))write(6,*) "NG"
 endif
end subroutine
 subroutine s4(x,a)
 complex,optional,pointer::a
 complex x;if (abs(x-(5,6))>0.001)write(6,*) "NG"
 if (present(a)) then
   if ((abs(a-(3,4))>0.0001))write(6,*) "NG"
 endif
end subroutine
 subroutine s5(x,a)
 complex,optional,pointer,dimension(:)::a
 complex x;if (abs(x-(5,6))>0.001)write(6,*) "NG"
 if (present(a)) then
   if (any(abs(a-(/(1,2),(3,4)/))>0.0001))write(6,*) "NG"
 endif
end subroutine
end

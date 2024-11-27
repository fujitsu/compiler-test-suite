complex a(2)
complex,pointer:: b(:),bb
a=(/(1,2),(3,4)/)
allocate(b(2),bb)
b=(/(1,2),(3,4)/)
bb=(3,4)
call s1(a(2))
call s1(a(2)+a(2)-a(2))
call s1( )
call s2(a    )
call s2(a+a-a)
call s2( )
call s3(a)
call s3( )
call s4(bb)
call s4( )
call s5(b)
call s5( )
print *,'pass'
contains
 subroutine s2(a)
 complex,optional,dimension(2)::a
 if (present(a)) then
   if (any(abs(a-(/(1,2),(3,4)/))>0.0001))write(6,*) "NG"
 endif
end subroutine
 subroutine s1(a)
 complex,optional::a
 if (present(a)) then
   if ((abs(a-(3,4))>0.0001))write(6,*) "NG"
 endif
end subroutine
 subroutine s3(a)
 complex,optional,dimension(:)::a
 if (present(a)) then
   if (any(abs(a-(/(1,2),(3,4)/))>0.0001))write(6,*) "NG"
 endif
end subroutine
 subroutine s4(a)
 complex,optional,pointer::a
 if (present(a)) then
   if ((abs(a-(3,4))>0.0001))write(6,*) "NG"
 endif
end subroutine
 subroutine s5(a)
 complex,optional,pointer,dimension(:)::a
 if (present(a)) then
   if (any(abs(a-(/(1,2),(3,4)/))>0.0001))write(6,*) "NG"
 endif
end subroutine
end

 call s1
 print *,'pass'
 end
  subroutine sub(i,a1,a2,a3,a4,a5,a6,a7,a8,a9,aa)
   integer,intent(out)::i
   integer ,optional,pointer,dimension(:,:,:,:,:,:,:)::a1,a2,a3,a4,a5,a6,a7,a8,a9,aa
   if (present(a1))a1=1
   if (present(a2))a2=1
   if (present(a3))a3=1
   if (present(a4))a4=1
   if (present(a5))a5=1
   if (present(a6))a6=1
   if (present(a7))a7=1
   if (present(a8))a8=1
   if (present(a9))a9=1
   if (present(aa))aa=1
   i=100
   if (present(a1))i=i+1
   if (present(a2))i=i+2
   if (present(a3))i=i+3
   if (present(a4))i=i+4
   if (present(a5))i=i+5
   if (present(a6))i=i+6
   if (present(a7))i=i+7
   if (present(a8))i=i+8
   if (present(a9))i=i+9
   if (present(aa))i=i+10
 end subroutine 
module m1
   integer ,pointer,dimension(:,:,:,:,:,:,:)::b1,b2,b3,b4,b5,b6,b7,b8,b9,bb
 interface sub
  subroutine sub(i,a1,a2,a3,a4,a5,a6,a7,a8,a9,aa)
   integer,intent(out)::i
   integer ,optional,pointer,dimension(:,:,:,:,:,:,:)::a1,a2,a3,a4,a5,a6,a7,a8,a9,aa
 end subroutine 
end interface
end
subroutine s1
 use m1
 allocate(b1(1,1,1,1,1,1,1))
 allocate(b2(1,1,1,1,1,1,1))
 allocate(b3(1,1,1,1,1,1,1))
 allocate(b4(1,1,1,1,1,1,1))
 allocate(b5(1,1,1,1,1,1,1))
 allocate(b6(1,1,1,1,1,1,1))
 allocate(b7(1,1,1,1,1,1,1))
 allocate(b8(1,1,1,1,1,1,1))
 allocate(b9(1,1,1,1,1,1,1))
 allocate(bb(1,1,1,1,1,1,1))
 b1=0;b2=0;b3=0;b4=0;b5=0;b6=0;b7=0;b8=0;b9=0;bb=0
 call ss0;b1=0;b2=0;b3=0;b4=0;b5=0;b6=0;b7=0;b8=0;b9=0;bb=0
 call ss1;b1=0;b2=0;b3=0;b4=0;b5=0;b6=0;b7=0;b8=0;b9=0;bb=0
 call ss2;b1=0;b2=0;b3=0;b4=0;b5=0;b6=0;b7=0;b8=0;b9=0;bb=0
 call ss3;b1=0;b2=0;b3=0;b4=0;b5=0;b6=0;b7=0;b8=0;b9=0;bb=0
 call ss4;b1=0;b2=0;b3=0;b4=0;b5=0;b6=0;b7=0;b8=0;b9=0;bb=0
 call ss5;b1=0;b2=0;b3=0;b4=0;b5=0;b6=0;b7=0;b8=0;b9=0;bb=0
 call ss6;b1=0;b2=0;b3=0;b4=0;b5=0;b6=0;b7=0;b8=0;b9=0;bb=0
 call ss7;b1=0;b2=0;b3=0;b4=0;b5=0;b6=0;b7=0;b8=0;b9=0;bb=0
 call ss8;b1=0;b2=0;b3=0;b4=0;b5=0;b6=0;b7=0;b8=0;b9=0;bb=0
 call ss9;b1=0;b2=0;b3=0;b4=0;b5=0;b6=0;b7=0;b8=0;b9=0;bb=0
 call ss10;b1=0;b2=0;b3=0;b4=0;b5=0;b6=0;b7=0;b8=0;b9=0;bb=0
end
subroutine ss0; use m1
call sub(j)
 if (j/=100)write(6,*) "NG"
 if (any(b1/=0))write(6,*) "NG"
 if (any(b2/=0))write(6,*) "NG"
 if (any(b3/=0))write(6,*) "NG"
 if (any(b4/=0))write(6,*) "NG"
 if (any(b5/=0))write(6,*) "NG"
 if (any(b6/=0))write(6,*) "NG"
 if (any(b7/=0))write(6,*) "NG"
 if (any(b8/=0))write(6,*) "NG"
 if (any(b9/=0))write(6,*) "NG"
 if (any(bb/=0))write(6,*) "NG"
end
subroutine ss1; use m1
call sub(j,b1)
 if (j/=101)write(6,*) "NG"
 if (any(b1/=1))write(6,*) "NG"
 if (any(b2/=0))write(6,*) "NG"
 if (any(b3/=0))write(6,*) "NG"
 if (any(b4/=0))write(6,*) "NG"
 if (any(b5/=0))write(6,*) "NG"
 if (any(b6/=0))write(6,*) "NG"
 if (any(b7/=0))write(6,*) "NG"
 if (any(b8/=0))write(6,*) "NG"
 if (any(b9/=0))write(6,*) "NG"
 if (any(bb/=0))write(6,*) "NG"
end
subroutine ss2; use m1
call sub(j,b1,aa=bb)
 if (j/=111)write(6,*) "NG"
 if (any(b1/=1))write(6,*) "NG"
 if (any(b2/=0))write(6,*) "NG"
 if (any(b3/=0))write(6,*) "NG"
 if (any(b4/=0))write(6,*) "NG"
 if (any(b5/=0))write(6,*) "NG"
 if (any(b6/=0))write(6,*) "NG"
 if (any(b7/=0))write(6,*) "NG"
 if (any(b8/=0))write(6,*) "NG"
 if (any(b9/=0))write(6,*) "NG"
 if (any(bb/=1))write(6,*) "NG"
end
subroutine ss3; use m1
call sub(j,b1,b2,aa=bb)
 if (j/=113)write(6,*) "NG"
 if (any(b1/=1))write(6,*) "NG"
 if (any(b2/=1))write(6,*) "NG"
 if (any(b3/=0))write(6,*) "NG"
 if (any(b4/=0))write(6,*) "NG"
 if (any(b5/=0))write(6,*) "NG"
 if (any(b6/=0))write(6,*) "NG"
 if (any(b7/=0))write(6,*) "NG"
 if (any(b8/=0))write(6,*) "NG"
 if (any(b9/=0))write(6,*) "NG"
 if (any(bb/=1))write(6,*) "NG"
end
subroutine ss4; use m1
call sub(j,b1,b2,a9=b9,aa=bb)
 if (j/=122)write(6,*) "NG"
 if (any(b1/=1))write(6,*) "NG"
 if (any(b2/=1))write(6,*) "NG"
 if (any(b3/=0))write(6,*) "NG"
 if (any(b4/=0))write(6,*) "NG"
 if (any(b5/=0))write(6,*) "NG"
 if (any(b6/=0))write(6,*) "NG"
 if (any(b7/=0))write(6,*) "NG"
 if (any(b8/=0))write(6,*) "NG"
 if (any(b9/=1))write(6,*) "NG"
 if (any(bb/=1))write(6,*) "NG"
end
subroutine ss5; use m1
call sub(j,b1,b2,b3,a9=b9,aa=bb)
 if (j/=125)write(6,*) "NG"
 if (any(b1/=1))write(6,*) "NG"
 if (any(b2/=1))write(6,*) "NG"
 if (any(b3/=1))write(6,*) "NG"
 if (any(b4/=0))write(6,*) "NG"
 if (any(b5/=0))write(6,*) "NG"
 if (any(b6/=0))write(6,*) "NG"
 if (any(b7/=0))write(6,*) "NG"
 if (any(b8/=0))write(6,*) "NG"
 if (any(b9/=1))write(6,*) "NG"
 if (any(bb/=1))write(6,*) "NG"
end
subroutine ss6; use m1
call sub(j,b1,b2,b3,a8=b8,a9=b9,aa=bb)
 if (j/=133)write(6,*) "NG"
 if (any(b1/=1))write(6,*) "NG"
 if (any(b2/=1))write(6,*) "NG"
 if (any(b3/=1))write(6,*) "NG"
 if (any(b4/=0))write(6,*) "NG"
 if (any(b5/=0))write(6,*) "NG"
 if (any(b6/=0))write(6,*) "NG"
 if (any(b7/=0))write(6,*) "NG"
 if (any(b8/=1))write(6,*) "NG"
 if (any(b9/=1))write(6,*) "NG"
 if (any(bb/=1))write(6,*) "NG"
end
subroutine ss7; use m1
call sub(j,b1,b2,b3,b4,a8=b8,a9=b9,aa=bb)
 if (j/=137)write(6,*) "NG"
 if (any(b1/=1))write(6,*) "NG"
 if (any(b2/=1))write(6,*) "NG"
 if (any(b3/=1))write(6,*) "NG"
 if (any(b4/=1))write(6,*) "NG"
 if (any(b5/=0))write(6,*) "NG"
 if (any(b6/=0))write(6,*) "NG"
 if (any(b7/=0))write(6,*) "NG"
 if (any(b8/=1))write(6,*) "NG"
 if (any(b9/=1))write(6,*) "NG"
 if (any(bb/=1))write(6,*) "NG"
end
subroutine ss8; use m1
call sub(j,b1,b2,b3,b4,a7=b7,a8=b8,a9=b9,aa=bb)
 if (j/=144)write(6,*) "NG"
 if (any(b1/=1))write(6,*) "NG"
 if (any(b2/=1))write(6,*) "NG"
 if (any(b3/=1))write(6,*) "NG"
 if (any(b4/=1))write(6,*) "NG"
 if (any(b5/=0))write(6,*) "NG"
 if (any(b6/=0))write(6,*) "NG"
 if (any(b7/=1))write(6,*) "NG"
 if (any(b8/=1))write(6,*) "NG"
 if (any(b9/=1))write(6,*) "NG"
 if (any(bb/=1))write(6,*) "NG"
end
subroutine ss9; use m1
call sub(j,b1,b2,b3,b4,b5,a7=b7,a8=b8,a9=b9,aa=bb)
 if (j/=149)write(6,*) "NG"
 if (any(b1/=1))write(6,*) "NG"
 if (any(b2/=1))write(6,*) "NG"
 if (any(b3/=1))write(6,*) "NG"
 if (any(b4/=1))write(6,*) "NG"
 if (any(b5/=1))write(6,*) "NG"
 if (any(b6/=0))write(6,*) "NG"
 if (any(b7/=1))write(6,*) "NG"
 if (any(b8/=1))write(6,*) "NG"
 if (any(b9/=1))write(6,*) "NG"
 if (any(bb/=1))write(6,*) "NG"
end
subroutine ss10; use m1
call sub(j,b1,b2,b3,b4,b5,a6=b6,a7=b7,a8=b8,a9=b9,aa=bb)
 if (j/=155)write(6,*) "NG"
 if (any(b1/=1))write(6,*) "NG"
 if (any(b2/=1))write(6,*) "NG"
 if (any(b3/=1))write(6,*) "NG"
 if (any(b4/=1))write(6,*) "NG"
 if (any(b5/=1))write(6,*) "NG"
 if (any(b6/=1))write(6,*) "NG"
 if (any(b7/=1))write(6,*) "NG"
 if (any(b8/=1))write(6,*) "NG"
 if (any(b9/=1))write(6,*) "NG"
 if (any(bb/=1))write(6,*) "NG"
end

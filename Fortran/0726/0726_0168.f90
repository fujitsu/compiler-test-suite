 call s1
 print *,'pass'
 end
 subroutine s1
   integer ::i5=5,j5=5
   character*10 c,cc
   if1(c)=ichar(c(i5:j5))-ichar(c(i5-4:j5-4))
   integer a(5)/1,2,3,4,5/,b(5),e(5),d(5)
   cc=''
   cc(1:1)=char(41)
   cc(5:5)=char(45)
   forall (i=if1(cc)-3:if1(cc)+1)
     b(i)=a(i)
     e(i)=a(i)
     d(i)=a(i)
   end forall
   if (any(b/=a))write(6,*) "NG"
   if (any(e/=a))write(6,*) "NG"
   if (any(d/=a))write(6,*) "NG"
      end

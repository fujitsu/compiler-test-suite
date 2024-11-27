   character*10 a(5),b(5)/5*'123456789a'/,aa(5)
   forall (i=1:5)
   a(i) = b(i)(1:i)
   end forall
   if (a(1)/='1') write(6,*) "NG"
   if (a(2)/='12') write(6,*) "NG"
   if (a(3)/='123') write(6,*) "NG"
   if (a(4)/='1234') write(6,*) "NG"
   if (a(5)/='12345') write(6,*) "NG"
   call sub(aa,b)
   print *,'pass'
     contains
   subroutine sub(a,b)
   character*(*) a(:),b(:)
   forall (i=1:5)
   a(i) = b(i)(1:i)
   end forall
   if (a(1)/='1') write(6,*) "NG"
   if (a(2)/='12') write(6,*) "NG"
   if (a(3)/='123') write(6,*) "NG"
   if (a(4)/='1234') write(6,*) "NG"
   if (a(5)/='12345') write(6,*) "NG"
   end subroutine
   end
   

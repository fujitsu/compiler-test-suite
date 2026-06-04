 !
 call s1
 print *,'pass'
 end
 subroutine s1
   call ss1
   call ss2
end
 module m1
 contains
subroutine chk(a)
character*(*) a(:)
if (a(1)/='11234')write(6,*) "NG"
if (a(1)/='11234')write(6,*) "NG"
a='12345'
end subroutine
end
 subroutine ss1
 use m1
      character*5 a(2)
    a='12345';i1=1;i2=2;i3=3;i4=4;i5=5
    a(:)(2:5)=a(:)(1:4); call chk(a)
    a(:)(2:5)=a(:)(1:1)//a(:)(2:4); call chk(a)
    a(:)(2:5)=a(:)(1:1)//a(:)(2:2)//a(:)(3:4); call chk(a)
    a(:)(2:5)=a(:)(1:1)//a(:)(2:2)//a(:)(3:3)//a(:)(4:4); call chk(a)
    a(:)(2:5)=a(:)(1:2)//a(:)(3:4); call chk(a)
    a(:)(i2:i5)=a(:)(i1:i4); call chk(a)
    a(:)(i2:i5)=a(:)(i1:i1)//a(:)(i2:i4); call chk(a)
    a(:)(i2:i5)=a(:)(i1:i1)//a(:)(i2:i2)//a(:)(i3:i4); call chk(a)
    a(:)(i2:i5)=a(:)(i1:i1)//a(:)(i2:i2)//a(:)(i3:i3)//a(:)(i4:i4); call chk(a)
    a(:)(i2:i5)=a(:)(i1:i2)//a(:)(i3:i4); call chk(a)
end
 subroutine ss2
 use m1
      character*5 a(2),b(2);equivalence(a,b)
    a='12345';i1=1;i2=2;i3=3;i4=4;i5=5
    b(:)(2:5)=a(:)(1:4); call chk(a)
    b(:)(2:5)=a(:)(1:1)//a(:)(2:4); call chk(a)
    b(:)(2:5)=a(:)(1:1)//a(:)(2:2)//a(:)(3:4); call chk(a)
    b(:)(2:5)=a(:)(1:1)//a(:)(2:2)//a(:)(3:3)//a(:)(4:4); call chk(a)
    b(:)(2:5)=a(:)(1:2)//a(:)(3:4); call chk(a)
    b(:)(i2:i5)=a(:)(i1:i4); call chk(a)
    b(:)(i2:i5)=a(:)(i1:i1)//a(:)(i2:i4); call chk(a)
    b(:)(i2:i5)=a(:)(i1:i1)//a(:)(i2:i2)//a(:)(i3:i4); call chk(a)
    b(:)(i2:i5)=a(:)(i1:i1)//a(:)(i2:i2)//a(:)(i3:i3)//a(:)(i4:i4); call chk(a)
    b(:)(i2:i5)=a(:)(i1:i2)//a(:)(i3:i4); call chk(a)
end


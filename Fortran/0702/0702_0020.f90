 call s1
 print *,'pass'
 end
module m1
character*50 rr(20),r
data rr/&
'  ok1  0.00000000 0.00000000',&
'00000000 00000000',&
' ( < 0.0?) F F',&
' 1.00000000 1.00000000',&
'  ok2  0.00000000 0.00000000',&
'00000000 00000000',&
' ( < 0.0?) F F',&
' 1.00000000 1.00000000',&
'  ok3  0.00000000 0.00000000',&
'00000000 00000000',&
' ( < 0.0?) F F',&
' 1.00000000 1.00000000',&
'  ok4  0.00000000 0.00000000',&
'00000000 00000000',&
' ( < 0.0?) F F',&
' 1.00000000 1.00000000',&
'  ok5  0.00000000 0.00000000',&
'00000000 80000000',&
' ( < 0.0?) F F',&
' 1.00000000 1.00000000'/  
end
 subroutine s1
use m1
         parameter(a=0.0)
         parameter(b=-0.0)
         parameter(a1=Z'00000000')
         parameter(b1=Z'80000000')
         aa=a
         bb=b
         aa1=a1
         bb1=b1
         aa2=0.0
         bb2=-aa2
         if (a.eq.b) write(1,*)" ok1 ",a,b
           write (1,'(z8.8,1x,z8.8)')a,b
           write(1,*)"( < 0.0?)",a.lt.0.0,b.lt.0.0
           write(1,*)sign(1.0,a),sign(1.0,b)
         if (a1.eq.b1) write(1,*)" ok2 ",a1,b1
           write (1,'(z8.8,1x,z8.8)')a1,b1
           write(1,*)"( < 0.0?)",a1.lt.0.0,b1.lt.0.0
           write(1,*)sign(1.0,a1),sign(1.0,b1)
         if (aa.eq.bb) write(1,*)" ok3 ",aa,bb
           write (1,'(z8.8,1x,z8.8)')aa,bb
           write(1,*)"( < 0.0?)",aa.lt.0.0,bb.lt.0.0
           write(1,*)sign(1.0,aa),sign(1.0,bb)
         if (aa1.eq.bb1) write(1,*)" ok4 ",aa1,bb1
           write (1,'(z8.8,1x,z8.8)')aa1,bb1
           write(1,*)"( < 0.0?)",aa1.lt.0.0,bb1.lt.0.0
           write(1,*)sign(1.0,aa1),sign(1.0,bb1)
         if (aa2.eq.bb2) write(1,*)" ok5 ",aa2,bb2
           write (1,'(z8.8,1x,z8.8)')aa2,bb2
           write(1,*)"( < 0.0?)",aa2.lt.0.0,bb2.lt.0.0
           write(1,*)sign(1.0,aa2),sign(1.0,bb2)
         end

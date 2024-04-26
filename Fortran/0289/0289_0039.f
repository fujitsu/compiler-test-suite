       program main
        character*10 c01,c02,c03,cc0
        character*2  c11(5),c12(5),c13(5)
        character*5  c00(2)
        c01='1111111111'
        c02='2222222222'
        c03='3333333333'
        i5=5
        i1=i5-4
        i2=i1+i5-1
        call sub(c01,c02,c11,i5)
        i5=i5+i1-i2+4
        call sub(c02,c03,c12,i2)
        i1=i1+i2-i5+4
        call sub(c03,c01,c13,i1)
        call cat(c11,c12,c13,c00,i1)
        cc0=c00(1)//c00(2)
        if(cc0.eq.'1232312121')then
          print *,'***** ok *****'
        else
          print *,'***** ng ***** ''',c00,''''
        endif
       end
       subroutine sub(cin1,cin2,cout,n)
        character*(*) cin1,cin2,cout(n)
        l=n-3
        m=n-1
        cout(n-4)(1:2)=cin1(1:1)//cin2(2:2)
        cout(l)(1:2)=cin2(3:3)//cin1(4:4)
        cout(n-2)(1:2)=cout(1)(1:1)//cout(2)(l:l)
        cout(m)(1:2)=cout(l+1)(l:l)//cout(l)(l:l)//cout(m)(1:1)
        cout(n)(1:2)=cout(m)(1:1)//cout(4)(l:2)
       end
       subroutine cat(cin1,cin2,cin3,cout,n)
        character*(*) cin1(5),cin2(5),cin3(5),cout(2)
        character*6   cwk(2)
        cwk(1)(3:6)=cin2(2)//cin3(3)
        cwk(2)(1:4)=cin1(2)(1:2)//cin1(1)
        cwk(1)(1:2)=cin1(1)(1:1)//cin1(1)(2:2)
        call csub(cwk,cout,n-3)
       end
       subroutine csub(c1,c2,n)
        character*(*) c1(n),c2(n)
        c2(n)=c1(n-1)(1:2)//c1(n)(2:2)//c1(n)(1:2)
        c2(n-1)=c2(n)(1:2)//c1(n-1)(3:5)
       end

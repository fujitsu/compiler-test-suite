      call s1
      print *,'pass'
      end
      subroutine s1
      parameter (i=2,j=2)
      type st
      sequence
      character*(5),dimension(i,i):: a,b,aa,bb
      endtype
      type (st):: s
      character*(1) x/'?'/
      s%a(1,1)='12345'
      s%a(2,1)='67890'
      s%a(1,2)='abcde'
      s%a(2,2)='fghij'
      s%b(1,1)='klmno'
      s%b(2,1)='pqrst'
      s%b(1,2)='uvwxy'
      s%b(2,2)='z1234'
      s%aa=s%a  
      s%bb=s%b  
      call       ss1(s,i,j,x)
      end
      subroutine ss1(s,i,j,x)
      type st
      sequence
      character*(5),dimension(2,2):: a,b,aa,bb
      endtype
      type (st):: s
      character*(*) x
      character*1 fdf
      character*2 c1,c2,c3,c4,c5,c6,c7,p1,p2,p3,p4,p5,p6,p7,q
      character*2 r1,r2,r3,r4,r5,r6,r7
      c1()=fdf(s%a//s%b                    ,s%aa,s%bb,1,5,1,5,121,' ')
      c2()=fdf(s%a(:,:)(2:3)//s%b(:,:)(2:3),s%aa,s%bb,2,3,2,3,122,' ')
      c3()=fdf(s%a(:,:)(2: )//s%b(:,:)(2: ),s%aa,s%bb,2,5,2,5,123,' ')
      c4()=fdf(s%a(:,:)( : )//s%b(:,:)( : ),s%aa,s%bb,1,5,1,5,124,' ')
      c5()=fdf(s%a(:,:)( :2)//s%b(:,:)( :2),s%aa,s%bb,1,2,1,2,125,' ')
      c6()=fdf(s%a(:,:)(i:3)//s%b(:,:)(i:3),s%aa,s%bb,i,3,i,3,126,' ')
      c7()=fdf(s%a(:,:)//s%b(:,:)          ,s%aa,s%bb,1,5,1,5,127,' ')
      p1(q)=fdf(s%a//s%b                    //q,s%aa,s%bb,
     1 1,5,1,5,121,'12')
      p2(q)=fdf(s%a(:,:)(2:3)//s%b(:,:)(2:3)//q,s%aa,s%bb,
     1 2,3,2,3,122,'12')
      p3(q)=fdf(s%a(:,:)(2: )//s%b(:,:)(2: )//q,s%aa,s%bb,
     1 2,5,2,5,123,'12')
      p4(q)=fdf(s%a(:,:)( : )//s%b(:,:)( : )//q,s%aa,s%bb,
     1 1,5,1,5,124,'12')
      p5(q)=fdf(s%a(:,:)( :2)//s%b(:,:)( :2)//q,s%aa,s%bb,
     1 1,2,1,2,125,'12')
      p6(q)=fdf(s%a(:,:)(i:3)//s%b(:,:)(i:3)//q,s%aa,s%bb,
     1 i,3,i,3,126,'12')
      p7(q)=fdf(s%a(:,:)//s%b(:,:)               //q,s%aa,s%bb,
     1 1,5,1,5,127,'12')
      r1(q)=fdf(s%a//s%b                    //q(2:2),s%aa,s%bb,
     1 1,5,1,5,121,'2')
      r2(q)=fdf(s%a(:,:)(2:3)//s%b(:,:)(2:3)//q(2:2),s%aa,s%bb,
     1 2,3,2,3,122,'2')
      r3(q)=fdf(s%a(:,:)(2: )//s%b(:,:)(2: )//q(2:2),s%aa,s%bb,
     1 2,5,2,5,123,'2')
      r4(q)=fdf(s%a(:,:)( : )//s%b(:,:)( : )//q(2:2),s%aa,s%bb,
     1 1,5,1,5,124,'2')
      r5(q)=fdf(s%a(:,:)( :2)//s%b(:,:)( :2)//q(2:2),s%aa,s%bb,
     1 1,2,1,2,125,'2')
      r6(q)=fdf(s%a(:,:)(i:3)//s%b(:,:)(i:3)//q(2:2),s%aa,s%bb,
     1 i,3,i,3,126,'2')
      r7(q)=fdf(s%a(:,:)//s%b(:,:)               //q(2:2),s%aa,s%bb,
     1 1,5,1,5,121,'2')
      call sdf(s%a//s%b               ,s%aa,s%bb,1,5,1,5,21)
      call sdf(s%a(:,:)(2:3)//s%b(:,:)(2:3),s%aa,s%bb,2,3,2,3,22)
      call sdf(s%a(:,:)(2: )//s%b(:,:)(2: ),s%aa,s%bb,2,5,2,5,23)
      call sdf(s%a(:,:)( : )//s%b(:,:)( : ),s%aa,s%bb,1,5,1,5,24)
      call sdf(s%a(:,:)( :2)//s%b(:,:)( :2),s%aa,s%bb,1,2,1,2,25)
      call sdf(s%a(:,:)(i:3)//s%b(:,:)(i:3),s%aa,s%bb,i,3,i,3,26)
      call sdf(s%a(:,:)(i:j+1)//s%b(:,:)(i:j+1),s%aa,s%bb,i,3,i,3,27)
      call sdf(s%a(:,:)//s%b(:,:)          ,s%aa,s%bb,1,5,1,5,28)
      if (c1()/='#') call err('?',01,1001)
      if (c2()/='#') call err('?',02,1001)
      if (c3()/='#') call err('?',03,1001)
      if (c4()/='#') call err('?',04,1001)
      if (c5()/='#') call err('?',05,1001)
      if (c6()/='#') call err('?',06,1001)
      if (c7()/='#') call err('?',06,1001)
      if (p1('12')/='#') call err('?',01,1002)
      if (p2('12')/='#') call err('?',02,1002)
      if (p3('12')/='#') call err('?',03,1002)
      if (p4('12')/='#') call err('?',04,1002)
      if (p5('12')/='#') call err('?',05,1002)
      if (p6('12')/='#') call err('?',06,1002)
      if (p7('12')/='#') call err('?',07,1002)
      if (r1('12')/='#') call err('?',01,1003)
      if (r2('12')/='#') call err('?',02,1003)
      if (r3('12')/='#') call err('?',03,1003)
      if (r4('12')/='#') call err('?',04,1003)
      if (r5('12')/='#') call err('?',05,1003)
      if (r6('12')/='#') call err('?',06,1003)
      if (r7('12')/='#') call err('?',07,1003)
      end
      function   fdf(a,aa,bb,i1,i2,j1,j2,k,r)
      character*(*) fdf,r
      character*(*),dimension(4):: a,aa,bb
      if (a(1)/=aa(1)(i1:i2)//bb(1)(j1:j2)//r)call err(a(1),01,k)
      if (a(2)/=aa(2)(i1:i2)//bb(2)(j1:j2)//r)call err(a(2),02,k)
      if (a(3)/=aa(3)(i1:i2)//bb(3)(j1:j2)//r)call err(a(3),03,k)
      if (a(4)/=aa(4)(i1:i2)//bb(4)(j1:j2)//r)call err(a(4),04,k)
      fdf='#'
      end
      subroutine sdf(a,aa,bb,i1,i2,j1,j2,k)
      character*(*),dimension(4):: a,aa,bb
      if (a(1)/=aa(1)(i1:i2)//bb(1)(j1:j2))call err(a(1),01,k)
      if (a(2)/=aa(2)(i1:i2)//bb(2)(j1:j2))call err(a(2),02,k)
      if (a(3)/=aa(3)(i1:i2)//bb(3)(j1:j2))call err(a(3),03,k)
      if (a(4)/=aa(4)(i1:i2)//bb(4)(j1:j2))call err(a(4),04,k)
      end
      subroutine err(c,i,j)
      character*(*) c
      print *,'error code:',c,i,j
      print *,'fail'
      end

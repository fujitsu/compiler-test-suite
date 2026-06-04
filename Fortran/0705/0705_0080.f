      call s1
      print *,'pass'
      end
      subroutine s1
      parameter (i=2,j=2)
      character*(5),dimension(i,i):: a,b,aa,bb
      data a(1,1)/'12345'/
      data a(2,1)/'67890'/
      data a(1,2)/'abcde'/
      data a(2,2)/'fghij'/
      data b(1,1)/'klmno'/
      data b(2,1)/'pqrst'/
      data b(1,2)/'uvwxy'/
      data b(2,2)/'z1234'/
      character*(1) x/'?'/
      integer m(2,2)/1,2,3,4/
      aa=a  
      bb=b  
      call       ss1(a,b,i,j,aa,bb,x,m)
      end
      subroutine ss1(a,b,i,j,aa,bb,x,m)
      character*(*),dimension(i,i):: a,b,aa*5,bb*5
      character*(*) x
      character*1 fdf,ch
      integer m(i,i)
      call sdf(a(:,:)(i:3)//b(:,:)(i:3),aa,bb,i,3,i,3,26)
      call sdg(char(i)//a(:,:)(i:3)//b(:,:)(i:3),aa,bb,i,3,i,3,27)
      call sdg(ch  (i)//a(:,:)(i:3)//b(:,:)(i:3),aa,bb,i,3,i,3,28)
      call sdf7(a(:,:)(i:3)//b(:,:)(i:3)//char(i),aa,
     1            bb,i,3,i,3,29,m)
      call sdf7(a(:,:)(i:3)//b(:,:)(i:3)//ch  (i),aa,
     1            bb,i,3,i,3,30,m)
      call sdf6(char(m)//a(:,:)(i:3)//b(:,:)(i:3),
     1      aa,bb,i,3,i,3,31,m)
      call sdf5(a(:,:)(i:3)//b(:,:)(i:3)//char(m),aa,
     1            bb,i,3,i,3,32,m)
      call sdf4(a(:,:)(i:3)//b(:,:)(i:3)//char(i)//ch(i),aa,
     1            bb,i,3,i,3,33)
      call sdf3(a(:,:)(i:3)//b(:,:)(i:3)//ch  (i)//char(m+m),aa,
     1            bb,i,3,i,3,34,m)
      call sdf2(char(m)//a(:,:)(i:3)//b(:,:)(i:3)//char(m),
     1       aa,bb,i,3,i,3,31,m)
      call sdf1(ch(i)//a(:,:)(i:3)//b(:,:)(i:3)//char(m),aa,
     1            bb,i,3,i,3,32,m)
      end
      subroutine sdf7(a,aa,bb,i1,i2,j1,j2,k,m)
      character*(*),dimension(4):: a,aa,bb
      integer m(4)
      if (a(1)/=aa(1)(i1:i2)//bb(1)(j1:j2)//char(2)
     1       )call err(a(1),01,k)
      if (a(2)/=aa(2)(i1:i2)//bb(2)(j1:j2)//char(2)
     1       )call err(a(2),02,k)
      if (a(3)/=aa(3)(i1:i2)//bb(3)(j1:j2)//char(2)
     1       )call err(a(3),03,k)
      if (a(4)/=aa(4)(i1:i2)//bb(4)(j1:j2)//char(2)
     1       )call err(a(4),04,k)
      end
      subroutine sdf6(a,aa,bb,i1,i2,j1,j2,k,m)
      character*(*),dimension(4):: a,aa,bb
      integer m(4)
      if (a(1)/=char(m(1))//aa(1)(i1:i2)//bb(1)(j1:j2)
     1       )call err(a(1),01,k)
      if (a(2)/=char(m(2))//aa(2)(i1:i2)//bb(2)(j1:j2)
     1       )call err(a(2),02,k)
      if (a(3)/=char(m(3))//aa(3)(i1:i2)//bb(3)(j1:j2)
     1       )call err(a(3),03,k)
      if (a(4)/=char(m(4))//aa(4)(i1:i2)//bb(4)(j1:j2)
     1       )call err(a(4),04,k)
      end
      subroutine sdf5(a,aa,bb,i1,i2,j1,j2,k,m)
      character*(*),dimension(4):: a,aa,bb
      integer m(4)
      if (a(1)/=aa(1)(i1:i2)//bb(1)(j1:j2)//char(m(1))
     1       )call err(a(1),01,k)
      if (a(2)/=aa(2)(i1:i2)//bb(2)(j1:j2)//char(m(2))
     1       )call err(a(2),02,k)
      if (a(3)/=aa(3)(i1:i2)//bb(3)(j1:j2)//char(m(3))
     1       )call err(a(3),03,k)
      if (a(4)/=aa(4)(i1:i2)//bb(4)(j1:j2)//char(m(4))
     1       )call err(a(4),04,k)
      end
      subroutine sdf4(a,aa,bb,i1,i2,j1,j2,k)
      character*(*),dimension(4):: a,aa,bb
      character*1 ch
      if (a(1)/=aa(1)(i1:i2)//bb(1)(j1:j2)//char(2)//ch(2))
     1   call err(a(1),01,k)
      if (a(2)/=aa(2)(i1:i2)//bb(2)(j1:j2)//char(2)//ch(2))
     1   call err(a(2),02,k)
      if (a(3)/=aa(3)(i1:i2)//bb(3)(j1:j2)//char(2)//ch(2))
     1   call err(a(3),03,k)
      if (a(4)/=aa(4)(i1:i2)//bb(4)(j1:j2)//char(2)//ch(2))
     1   call err(a(4),04,k)
      end
      function ch(i)
      character*(*) ch
      ch = char(i)
      end
      subroutine sdf3(a,aa,bb,i1,i2,j1,j2,k,m)
      character*(*),dimension(4):: a,aa,bb
      character*1 ch
      integer m(4)
      if (a(1)/=aa(1)(i1:i2)//bb(1)(j1:j2)//ch(2)//char(m(1)+m(1))
     1       )call err(a(1),01,k)
      if (a(2)/=aa(2)(i1:i2)//bb(2)(j1:j2)//ch(2)//char(m(2)+m(2))
     1       )call err(a(2),02,k)
      if (a(3)/=aa(3)(i1:i2)//bb(3)(j1:j2)//ch(2)//char(m(3)+m(3))
     1       )call err(a(3),03,k)
      if (a(4)/=aa(4)(i1:i2)//bb(4)(j1:j2)//ch(2)//char(m(4)+m(4))
     1       )call err(a(4),04,k)
      end
      subroutine sdf2(a,aa,bb,i1,i2,j1,j2,k,m)
      character*(*),dimension(4):: a,aa,bb
      integer m(4)
      if (a(1)/=char(m(1))//aa(1)(i1:i2)//bb(1)(j1:j2)//char(m(1))
     1       )call err(a(1),01,k)
      if (a(2)/=char(m(2))//aa(2)(i1:i2)//bb(2)(j1:j2)//char(m(2))
     1       )call err(a(2),02,k)
      if (a(3)/=char(m(3))//aa(3)(i1:i2)//bb(3)(j1:j2)//char(m(3))
     1       )call err(a(3),03,k)
      if (a(4)/=char(m(4))//aa(4)(i1:i2)//bb(4)(j1:j2)//char(m(4))
     1       )call err(a(4),04,k)
      end
      subroutine sdf1(a,aa,bb,i1,i2,j1,j2,k,m)
      character*(*),dimension(4):: a,aa,bb
      integer m(4)
      if (a(1)/=char(2)//aa(1)(i1:i2)//bb(1)(j1:j2)//char(m(1))
     1       )call err(a(1),01,k)
      if (a(2)/=char(2)//aa(2)(i1:i2)//bb(2)(j1:j2)//char(m(2))
     1       )call err(a(2),02,k)
      if (a(3)/=char(2)//aa(3)(i1:i2)//bb(3)(j1:j2)//char(m(3))
     1       )call err(a(3),03,k)
      if (a(4)/=char(2)//aa(4)(i1:i2)//bb(4)(j1:j2)//char(m(4))
     1       )call err(a(4),04,k)
      end
      subroutine sdf(a,aa,bb,i1,i2,j1,j2,k)
      character*(*),dimension(4):: a,aa,bb
      if (a(1)/=aa(1)(i1:i2)//bb(1)(j1:j2))call err(a(1),01,k)
      if (a(2)/=aa(2)(i1:i2)//bb(2)(j1:j2))call err(a(2),02,k)
      if (a(3)/=aa(3)(i1:i2)//bb(3)(j1:j2))call err(a(3),03,k)
      if (a(4)/=aa(4)(i1:i2)//bb(4)(j1:j2))call err(a(4),04,k)
      end
      subroutine sdg(a,aa,bb,i1,i2,j1,j2,k)
      character*(*),dimension(4):: a,aa,bb
      if (a(1)/=char(2)//aa(1)(i1:i2)//bb(1)(j1:j2))call err(a(1),01,k)
      if (a(2)/=char(2)//aa(2)(i1:i2)//bb(2)(j1:j2))call err(a(2),02,k)
      if (a(3)/=char(2)//aa(3)(i1:i2)//bb(3)(j1:j2))call err(a(3),03,k)
      if (a(4)/=char(2)//aa(4)(i1:i2)//bb(4)(j1:j2))call err(a(4),04,k)
      end
      subroutine err(c,i,j)
      character*(*) c
      print *,'error code:',c,i,j
      print *,'fail'
      end

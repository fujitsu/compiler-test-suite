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
      call tt
      aa=a  
      bb=b  
      call       ss1(a,b,i,j,aa,bb,x)
      end
      subroutine tt
      character*1000 y,x
      character*1000,dimension(2)::yy
      y(1:3)='123'
      yy(1)(1:3)='abc'
      yy(2)(1:3)='def'
      do ii=1,1000
        x(ii:ii)='x'
      enddo
      y(2:1000)=y(1:3)//x 
      if (y(1:1)/='1')call err(y(1:1),01,01)
      if (y(2:2)/='1')call err(y(2:2),02,01)
      if (y(3:3)/='2')call err(y(3:3),03,01)
      if (y(4:4)/='3')call err(y(4:4),04,01)
      do ii=5,1000
        if(y(ii:ii)/='x')call err(y(ii:ii),ii,01)
      enddo
      yy(:)(2:1000)=yy(:)(1:3)//x
      if (yy(1)(1:1)/='a')call err(yy(1)(1:1),01,02)
      if (yy(1)(2:2)/='a')call err(yy(1)(2:2),02,02)
      if (yy(1)(3:3)/='b')call err(yy(1)(3:3),03,02)
      if (yy(1)(4:4)/='c')call err(yy(1)(4:4),04,02)
      do ii=5,1000
        if(yy(1)(ii:ii)/='x')call err(yy(1)(ii:ii),ii,02)
      enddo
      if (yy(2)(1:1)/='d')call err(yy(1)(1:1),01,03)
      if (yy(2)(2:2)/='d')call err(yy(1)(2:2),02,03)
      if (yy(2)(3:3)/='e')call err(yy(1)(3:3),03,03)
      if (yy(2)(4:4)/='f')call err(yy(1)(4:4),04,03)
      do ii=5,1000
        if(yy(2)(ii:ii)/='x')call err(yy(2)(ii:ii),ii,03)
      enddo
      end
      subroutine ss1(a,b,i,j,aa,bb,x)
      character*(*),dimension(i,i):: a,b,aa*5,bb*5
      character*(*) x
      call sdf(a//b               ,aa,bb,1,5,1,5,21)
      call sdf(a(:,:)(2:3)//b(:,:)(2:3),aa,bb,2,3,2,3,22)
      call sdf(a(:,:)(i:3)//b(:,:)(i:3),aa,bb,i,3,i,3,23)
      call sdf(a(:,:)(i:j+1)//b(:,:)(i:j+1),aa,bb,i,3,i,3,24)
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

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
      aa=a  
      bb=b  
      call       ss1(a,b,i,j,aa,bb,x)
      end
      subroutine ss1(a,b,i,j,aa,bb,x)
      character*(*),dimension(i,i):: a,b,aa*5,bb*5
      character*(*) x
      logical r(2,2)
      integer t(2,2)
      a(:,:)(j+1:5)=x//a(:,:)(j:j+1)//b(:,:)(j:2)
      if (a(1,1)/=aa(1,1)(1:2)//x//aa(1,1)(2:3))
     1                                      call err(a(1,1),01,01)
      if (a(2,1)/=aa(2,1)(1:2)//x//aa(2,1)(2:3))
     1                                      call err(a(2,1),01,01)
      if (a(1,2)/=aa(1,2)(1:2)//x//aa(1,2)(2:3))
     1                                      call err(a(1,2),01,01)
      if (a(2,2)/=aa(2,2)(1:2)//x//aa(2,2)(2:3))
     1                                      call err(a(2,2),01,01)
      a=aa
      call cz(a(:,:)(j:j+1)//b(:,:)(j:2),aa,bb,61)
      call cy(x//a(:,:)(j:j+1)//b(:,:)(j:2),aa,bb,60)
      r(:,:)=x//a (:,:)(j:j+2)//b (:,:)(j:j+1) /=
     1       x//aa(:,:)(2:4  )//bb(:,:)(2:3  )
      if (r(1,1)) call err('?????',05,02)
      if (r(2,1)) call err('?????',06,02)
      if (r(1,2)) call err('?????',07,02)
      if (r(2,2)) call err('?????',08,02)
      call rc(a (:,:)(j:j+2)//b (:,:)(j:j+1) /=
     1       aa(:,:)(2:4  )//bb(:,:)(2:3  ),78)
      call rc(x//a (:,:)(j:j+2)//b (:,:)(j:j+1) /=
     1       x//aa(:,:)(2:4  )//bb(:,:)(2:3  ),79)
      call t_s(index(x//a (:,:)(j:j+2)//b (:,:)(j:j+1) ,  
     1               x//aa(:,:)(2:4  )//bb(:,:)(2:3  )) -1,91,0)
      call t_s(index(x//a (:,:)(j:j+2)//b (:,:)(j:j+1) ,  
     1               x//aa(:,:)(2:4  )//bb(:,:)(2:3  )) ,92,1)
      call t_c(char(index(x//a (:,:)(j:j+2)//b (:,:)(j:j+1) ,  
     1                    x//aa(:,:)(2:4  )//bb(:,:)(2:3  )) -1),95,0)
      call t_c(char(index(x//a (:,:)(j:j+2)//b (:,:)(j:j+1) ,  
     1             x//aa(:,:)(2:4  )//bb(:,:)(2:3  ))) ,96,1)
      call t_t(real(index(x//a (:,:)(j:j+2)//b (:,:)(j:j+1) ,  
     1             x//aa(:,:)(2:4  )//bb(:,:)(2:3  ))) -1,93,0)
      call t_t(real(index(x//a (:,:)(j:j+2)//b (:,:)(j:j+1) ,  
     1             x//aa(:,:)(2:4  )//bb(:,:)(2:3  ))) ,94,1)
      t=0       
      t(:,:)=index(x//a (:,:)(j:j+2)//b (:,:)(j:j+1) ,  
     1             aa(:,:)(3:4  )//bb(:,:)(2:3  )) -1
      if (t(1,1)/=2) call err('?????',13,03)
      if (t(2,1)/=2) call err('?????',14,03)
      if (t(1,2)/=2) call err('?????',15,03)
      if (t(2,2)/=2) call err('?????',16,03)
      a(:,:)(j+1:5)=x//a(:,:)(j:j+2)
      if (a(1,1)/=aa(1,1)(:2)//x//aa(1,1)(2:3))call err(a(1,1),17,05)
      if (a(2,1)/=aa(2,1)(:2)//x//aa(2,1)(2:3))call err(a(2,1),18,05)
      if (a(1,2)/=aa(1,2)(:2)//x//aa(1,2)(2:3))call err(a(1,2),19,05)
      if (a(2,2)/=aa(2,2)(:2)//x//aa(2,2)(2:3))call err(a(2,2),20,05)
      a=aa
      call cx(x//a(:,:)(j:j+2),80,aa)
      end
      subroutine cy(c,aa,bb,i)
      character*(*),dimension(4):: c,aa,bb
      if (len(c)/=4)call err('?????',i,01)
      if (c(1)/='?'//aa(1)(2:3)//bb(1)(2:2))call err(c(1),i,02)
      if (c(2)/='?'//aa(2)(2:3)//bb(2)(2:2))call err(c(2),i,03)
      if (c(3)/='?'//aa(3)(2:3)//bb(3)(2:2))call err(c(3),i,04)
      if (c(4)/='?'//aa(4)(2:3)//bb(4)(2:2))call err(c(4),i,05)
      end
      subroutine cz(c,aa,bb,i)
      character*(*),dimension(4):: c,aa,bb
      if (len(c)/=3)call err('?????',i,01)
      if (c(1)/=aa(1)(2:3)//bb(1)(2:2))call err(c(1),i,02)
      if (c(2)/=aa(2)(2:3)//bb(2)(2:2))call err(c(2),i,03)
      if (c(3)/=aa(3)(2:3)//bb(3)(2:2))call err(c(3),i,04)
      if (c(4)/=aa(4)(2:3)//bb(4)(2:2))call err(c(4),i,05)
      end
      subroutine rc(r,i)
      logical r(4)
      if (r(1))call err('?????',i,01)
      if (r(2))call err('?????',i,02)
      if (r(3))call err('?????',i,03)
      if (r(4))call err('?????',i,04)
      end
      subroutine cx(c,i,cc)
      character*(*) c(4),cc(4)
      if (len(cc)/=5)call err('?????',50,i)
      if (len(c)/=4)call err('?????',51,i)
      if (c(1)/='?'//cc(1)(2:4))call err('?????',52,i)
      if (c(2)/='?'//cc(2)(2:4))call err('?????',53,i)
      if (c(3)/='?'//cc(3)(2:4))call err('?????',54,i)
      if (c(4)/='?'//cc(4)(2:4))call err('?????',55,i)
      end
      subroutine t_s(t,ic,ip)
      integer,dimension(4):: t
      if (t(1)/=ip) call err('?????',109,ic)
      if (t(2)/=ip) call err('?????',110,ic)
      if (t(3)/=ip) call err('?????',111,ic)
      if (t(4)/=ip) call err('?????',112,ic)
      end
      subroutine t_t(t,ic,ip)
      real   ,dimension(4):: t
      if (t(1)/=ip) call err('?????',209,ic)
      if (t(2)/=ip) call err('?????',210,ic)
      if (t(3)/=ip) call err('?????',211,ic)
      if (t(4)/=ip) call err('?????',212,ic)
      end
      subroutine t_c(t,ic,ip)
      character*(*),dimension(4):: t
      if (t(1)/=char(ip)) call err('?????',309,ic)
      if (t(2)/=char(ip)) call err('?????',310,ic)
      if (t(3)/=char(ip)) call err('?????',311,ic)
      if (t(4)/=char(ip)) call err('?????',312,ic)
      if (len(t)/=1)      call err('?????',313,ic)
      end
      subroutine err(c,i,j)
      character*(*) c
      print *,'error code:',c,i,j
      print *,'fail'
      end

      call s1
      print *,'pass'
      end
      subroutine s1
      type a
        sequence
        integer     a1(2,2)
        complex     a2(2,2)
        character*2 a3(2,2)
      end type
      type b
        sequence
        type (a) ::b1(2,2)
      end type b
      type (b):: x(2,2),xx(2,2)
      type (a):: y(2,2)
      call ss1(loc(x),loc(y),loc(xx),1)
      call ss2(loc(x),loc(y),loc(xx),1)
      call ss3(loc(x),loc(y),loc(xx),1)
      end
      subroutine ss1(ix,iy,ixx,k)
      pointer (ix,x),(iy,y),(ixx,xx)
      type a
        sequence
        integer     a1(2,2)
        complex     a2(2,2)
        character*2 a3(2,2)
      end type
      type b
        sequence
        type (a) ::b1(2,2)
      end type b
      type (a):: y(k+k,k+k)
      type (b):: x(k+k,k+k)
      type (b):: xx(k+k,k+k)
      integer,dimension(2,2):: aa1/1,2,3,4/,ab1
      complex,dimension(2,2):: aa2/(1,1),(2,2),(3,3),(4,4)/,ab2
      character*2,dimension(2,2):: aa3/'11','22','33','44'/,ab3
      x(2,2)%b1(1,1)%a1=aa1
      x(2,2)%b1(1,1)%a2=aa2
      x(2,2)%b1(1,1)%a3=aa3
      x(2,2)%b1=x(2,2)%b1(1,1)
      x=x(2,2)
      iu=11
      write(iu,*) x(1,1)%b1(1,1)%a1(:,:)
      rewind iu
      read (iu,*) ab1
      call a1_chk(ab1,1)
      iu=12
      write(iu,*) x(1,1)%b1(1,1)%a2(:,:)
      rewind iu
      read (iu,*) ab2
      call a2_chk(ab2,1)
      iu=13
      open (iu,delim='quote')
      write(iu,*) x(1,1)%b1(1,1)%a3(:,:)
      rewind iu
      read (iu,*) ab3
      call a3_chk(ab3,1)
      iu=14
      open (iu,delim='quote')
      write(iu,*) x(1,1)%b1(:,:)
      rewind iu
      read (iu,*) y   
      call a4_chk(y,1)
      end
      subroutine ss2(ix,iy,ixx,k)
      pointer (ix,x),(iy,y),(ixx,xx)
      type a
        sequence
        integer     a1(2,2)
        complex     a2(2,2)
        character*2 a3(2,2)
      end type
      type b
        sequence
        type (a) ::b1(2,2)
      end type b
      type (a):: y(k+k,k+k)
      type (b):: x(k+k,k+k)
      type (b):: xx(k+k,k+k)
      integer,dimension(2,2):: aa1/1,2,3,4/,ab1
      complex,dimension(2,2):: aa2/(1,1),(2,2),(3,3),(4,4)/,ab2
      character*2,dimension(2,2):: aa3/'11','22','33','44'/,ab3
      x(2,2)%b1(1,1)%a1=aa1
      x(2,2)%b1(1,1)%a2=aa2
      x(2,2)%b1(1,1)%a3=aa3
      x(2,2)%b1=x(2,2)%b1(1,1)
      x=x(2,2)
      iu=21
      write(iu,*) x(1,1)%b1(:,:)%a1(2,2)
      rewind iu
      read (iu,*) ab1
      call c1_chk(ab1,3)
      iu=22
      write(iu,*) x(1,1)%b1(:,:)%a2(2,2)
      rewind iu
      read (iu,*) ab2
      call c2_chk(ab2,3)
      iu=23
      open (iu,delim='quote')
      write(iu,*) x(1,1)%b1(:,:)%a3(2,2)
      rewind iu
      read (iu,*) ab3
      call c3_chk(ab3,3)
      iu=24
      open (iu,delim='quote')
      write(iu,*) x(:,:)
      rewind iu
      read (iu,*) xx  
      call c5_chk(xx,1)
      end
      subroutine ss3(ix,iy,ixx,k)
      pointer (ix,x),(iy,y),(ixx,xx)
      type a
        sequence
        integer     a1(2,2)
        complex     a2(2,2)
        character*2 a3(2,2)
      end type
      type b
        sequence
        type (a) ::b1(2,2)
      end type b
      type (a):: y(k+k,k+k)
      type (b):: x(k+k,k+k)
      type (b):: xx(k+k,k+k)
      integer,dimension(2,2):: aa1/1,2,3,4/,ab1
      complex,dimension(2,2):: aa2/(1,1),(2,2),(3,3),(4,4)/,ab2
      character*2,dimension(2,2):: aa3/'11','22','33','44'/,ab3
      x(2,2)%b1(1,1)%a1=aa1
      x(2,2)%b1(1,1)%a2=aa2
      x(2,2)%b1(1,1)%a3=aa3
      x(2,2)%b1=x(2,2)%b1(1,1)
      x=x(2,2)
      iu=31
      write(iu,*) x(:,:)%b1(2,2)%a1(2,2)
      rewind iu
      read (iu,*) ab1
      call c1_chk(ab1,9)
      iu=32
      write(iu,*) x(:,:)%b1(2,2)%a2(2,2)
      rewind iu
      read (iu,*) ab2
      call c2_chk(ab2,9)
      iu=33
      open (iu,delim='quote')
      write(iu,*) x(:,:)%b1(2,2)%a3(2,2)
      rewind iu
      read (iu,*) ab3
      call c3_chk(ab3,9)
      iu=34
      open (iu,delim='quote')
      write(iu,*) x(:,:)%b1(2,2)
      rewind iu
      read (iu,*) y   
      call a4_chk(y,10)
      end
      subroutine a1_chk(a,i)
      integer a(*) 
      if (a(1)/=1)call err(i,1,0,a(1))
      if (a(2)/=2)call err(i,2,0,a(2))
      if (a(3)/=3)call err(i,3,0,a(3))
      if (a(4)/=4)call err(i,4,0,a(4))
      end
      subroutine a2_chk(a,i)
      complex a(*) 
      if (a(1)/=(1,1))call err(i,1,0,int(a(1)))
      if (a(2)/=(2,2))call err(i,2,0,int(a(2)))
      if (a(3)/=(3,3))call err(i,3,0,int(a(3)))
      if (a(4)/=(4,4))call err(i,4,0,int(a(4)))
      end
      subroutine a3_chk(a,i)
      character*(*) a(*) 
      if (a(1)/='11')call err(i,1,0,int((1)))
      if (a(2)/='22')call err(i,2,0,int((2)))
      if (a(3)/='33')call err(i,3,0,int((3)))
      if (a(4)/='44')call err(i,4,0,int((4)))
      end
      subroutine a4_chk(t,i)
      type a
        sequence
        integer     a1(2,2)
        complex     a2(2,2)
        character*2 a3(2,2)
      end type
      type b
        sequence
        type (a) ::b1(2,2)
      end type b
      parameter (k=1)
      type (a):: t(1+1,k+k)
      type (b):: x(k+k,k+k)
      call a1_chk(t(1,1)%a1,2)
      call a2_chk(t(1,1)%a2,2)
      call a3_chk(t(1,1)%a3,2)
      end
      subroutine c1_chk(a,i)
      integer a(*) 
      if (a(1)/=4)call err(i,1,0,a(1))
      if (a(2)/=4)call err(i,2,0,a(2))
      if (a(3)/=4)call err(i,3,0,a(3))
      if (a(4)/=4)call err(i,4,0,a(4))
      end
      subroutine c2_chk(a,i)
      complex a(*) 
      if (a(1)/=(4,4))call err(i,1,0,int(a(1)))
      if (a(2)/=(4,4))call err(i,2,0,int(a(2)))
      if (a(3)/=(4,4))call err(i,3,0,int(a(3)))
      if (a(4)/=(4,4))call err(i,4,0,int(a(4)))
      end
      subroutine c3_chk(a,i)
      character*(*) a(*) 
      if (a(1)/='44')call err(i,1,0,int((1)))
      if (a(2)/='44')call err(i,2,0,int((2)))
      if (a(3)/='44')call err(i,3,0,int((3)))
      if (a(4)/='44')call err(i,4,0,int((4)))
      end
      subroutine c5_chk(t,i)
      type a
        sequence
        integer     a1(2,2)
        complex     a2(2,2)
        character*2 a3(2,2)
      end type
      type b
        sequence
        type (a) ::b1(2,2)
      end type b
      parameter (k=1)
      type (b):: t(k+k,k+k)
      call a1_chk(t(1,1)%b1(1,1)%a1,5)
      call a2_chk(t(1,1)%b1(1,1)%a2,5)
      call a3_chk(t(1,1)%b1(1,1)%a3,5)
      end
      subroutine err(i,j,k,m)
      integer       m
      print *,'fail'
      print *,'error code :',i,j,k,m
      end

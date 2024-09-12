      call sub1()
      print *,'pass'
      end
      subroutine sub1()
      integer a(10,10)
      integer*1 i1
      integer*2 i2
      integer*4 i4
      integer*8 i8
      i=10;i1=5;i2=5;i4=5;i8=5
      call sss01(a,i)
      call sss02(a,'X')
      call sss03(a,10)
      call sss04(a,10)
      call sss05(a,10)
      call sss06(a,10)
      call sss07(a,10)
      call sss08(a,10)
      call sss09(a,10)
      call sss10(a,10)
      call sss11(a,10)
      call sss12(a,10)
      call sss13(a,10)
      call sss14(a,-11)
      call sss15(a,10)
      call sss16(a,10)
      call sss17(a,10)
      call sss18(a,i1)
      call sss19(a,i2)
      call sss20(a,i4)
      call sss21(a,i8)
      i1=5*2;i2=5*2;i4=5*2;i8=5*2
      call sss22(a,i1)
      call sss23(a,i2)
      call sss24(a,i4)
      call sss25(a,i8)
      call sss26(a,i8-5)
      call sss27(a,'1234567890')
      call sss28(a,88)
      call sss29(a,'aaaaaaaaab')
      contains
       subroutine sss29(b,j)
       integer ,parameter :: k=index('a','a' )  
       character*10 j 
       integer b(index(j,'b'),index('aaaaaaaaab','b'))
       b=k
       end subroutine
       subroutine sss28(b,j)
       integer ,parameter :: k=ichar(char(88))   
       integer b(ichar(char(j))-78,ichar(char(j))-78)
       b=k
       end subroutine
       subroutine sss27(b,j)
       integer ,parameter :: k=len('a')   
       character j 
       integer b(len(j),len(j//''))
       b=k
       end subroutine
       subroutine sss26(b,j)
       integer*8 jj,j1,j
       parameter (jj=1,j1=5)
       integer ,parameter :: k=ibset(j1,jj)     
       integer b(ibset(j,jj)+3,ibset(j1,jj)+3)
       b=k
       end subroutine
       subroutine sss25(b,j)
       integer*8 jj,j1,j
       parameter (jj=1,j1=10)
       integer ,parameter :: k=ibclr(j1,jj)     
       integer b(ibclr(j,jj),ibclr(j1,jj))
       b=k
       end subroutine
       subroutine sss24(b,j)
       integer*4 jj,j1,j
       parameter (jj=1,j1=10)
       integer ,parameter :: k=ibclr(j1,jj)     
       integer b(ibclr(j,jj),ibclr(j1,jj))
       b=k
       end subroutine
       subroutine sss23(b,j)
       integer*2 jj,j1,j
       parameter (jj=1,j1=10)
       integer ,parameter :: k=ibclr(j1,jj)     
       integer b(ibclr(j,jj),ibclr(j1,jj))
       b=k
       end subroutine
       subroutine sss22(b,j)
       integer*1 jj,j1,j
       parameter (jj=1,j1=10)
       integer ,parameter :: k=ibclr(j1,jj)     
       integer b(ibclr(j,jj),ibclr(j1,jj))
       b=k
       end subroutine
       subroutine sss21(b,j)
       integer*8 jj,j1,j
       parameter (jj=1,j1=5)
       integer ,parameter :: k=ishft(j1,jj)     
       integer b(ishft(j,jj),ishft(j1,jj))
       b=k
       end subroutine
       subroutine sss20(b,j)
       integer*4 jj,j1,j
       parameter (jj=1,j1=5)
       integer ,parameter :: k=ishft(j1,jj)     
       integer b(ishft(j,jj),ishft(j1,jj))
       b=k
       end subroutine
       subroutine sss19(b,j)
       integer*2 jj,j1,j
       parameter (jj=1,j1=5)
       integer ,parameter :: k=ishft(j1,jj)     
       integer b(ishft(j,jj),ishft(j1,jj))
       b=k
       end subroutine
       subroutine sss18(b,j)
       integer*1 jj,j1,j
       parameter (jj=1,j1=5)
       integer ,parameter :: k=ishft(j1,jj)     
       integer b(ishft(j,jj),ishft(j1,jj))
       b=k
       end subroutine
       subroutine sss17(b,j)
       integer ,parameter :: k=ieor(10,0)     
       integer b(ieor(j,0),ieor(10,0))
       b=k
       end subroutine
       subroutine sss16(b,j)
       integer ,parameter :: k=ior(10,10)     
       integer b(ior(j,j),ior(10,10))
       b=k
       end subroutine
       subroutine sss15(b,j)
       integer ,parameter :: k=iand(10,10)     
       integer b(iand(j,j),iand(10,10))
       b=k
       end subroutine
       subroutine sss14(b,j)
       integer ,parameter :: k=not(-11)     
       integer b(not(j),not(-11))
       b=k
       end subroutine
       subroutine sss13(b,j)
       integer ,parameter :: k=min(10,100)     
       integer b(min(j,j+10),min(10,100))
       b=k
       end subroutine
       subroutine sss12(b,j)
       integer ,parameter :: k=min0(10,100)     
       integer b(min0(j,j+10),min0(10,100))
       b=k
       end subroutine
       subroutine sss11(b,j)
       integer ,parameter :: k=max0(10,0)     
       integer b(max0(j,j-10),max0(10,0))
       b=k
       end subroutine
       subroutine sss10(b,j)
       integer ,parameter :: k=max(10,0)     
       integer b(max(j,j-10),max(10,0))
       b=k
       end subroutine
       subroutine sss09(b,j)
       integer ,parameter :: k=idim(10,0)     
       integer b(idim(j,j-10),idim(10,0))
       b=k
       end subroutine
       subroutine sss08(b,j)
       integer ,parameter :: k=dim(10,0)     
       integer b(dim(j,j-10),dim(10,0))
       b=k
       end subroutine
       subroutine sss07(b,j)
       integer ,parameter :: k=isign(10,10)     
       integer b(isign(j,j),isign(-10,1))
       b=k
       end subroutine
       subroutine sss06(b,j)
       integer ,parameter :: k=sign(10,10)     
       integer b(sign(j,j),sign(-10,1))
       b=k
       end subroutine
       subroutine sss05(b,j)
       integer ,parameter :: k=mod(11,10)     
       integer b(mod(11,j)+9,mod(11,10)+9)
       b=k
       end subroutine
       subroutine sss04(b,j)
       integer ,parameter :: k=iabs(1)     
       integer b(iabs(j),iabs(10))
       b=k
       end subroutine
       subroutine sss03(b,j)
       integer ,parameter :: k=abs(1)     
       integer b(abs(j),abs(10))
       b=k
       end subroutine
       subroutine sss02(b,x)
       integer ,parameter :: k=ichar('X') 
       character x
       integer b(ichar(x)-78,ichar('X')-78)
       b=k-86
       end subroutine
       subroutine sss01(b,j)
       integer ,parameter :: k=int(1) 
       integer b(int(j),int(10))
       b=k
       end subroutine
      end

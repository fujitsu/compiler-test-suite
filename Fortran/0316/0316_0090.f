
      character*0    ,parameter,dimension(3):: ch0=''
      character*1    ,parameter             :: ch1='a'
      character*10   ,parameter,dimension(3):: ch2='abcdefghij'
      character*32767,parameter             :: ch3='xxxvxxxv'
      character*1,    parameter,dimension(3):: sub1='z'
      character*3,    parameter,dimension(3):: sub2='def'
      character*5,    parameter             :: sub3='jjjjj'
      integer*4,dimension(3):: ia,ib,ic,id,ie,if,ig,ih
      integer*4,dimension(3):: ja,jb,jc,jd,je,jf,jg,jh,jj,jk
      integer*4,dimension(3):: ka,kb,kc,kd,ke,kf,kg,kh,kj,kk
      integer*4             :: ii,ij,ik,ji,ki
      logical*1,parameter::              l1t=.true.,l1f=.false.
      logical*4,parameter,dimension(3):: l4t=.true.,l4f=.false.

      parameter(ia=verify(ch0,ch0)) 
      parameter(ib=verify(ch0,ch1)) 
      parameter(ic=verify(ch1,sub1)) 
      parameter(id=verify(ch2,sub2)) 
      parameter(ie=verify(ch2,sub3)) 
      parameter(if=verify(ch2,'abcdefghij')) 
      parameter(ig=verify(ch2,'kjihgfedcba')) 
      parameter(ih=verify(ch2,'xxxxxxxxxxxxxxxxx')) 
      parameter(ii=verify(ch3,ch3)) 
      parameter(ij=verify(ch3,'                 ')) 
      parameter(ik=verify(ch3,'vx')) 
      parameter(ja=verify(ch0,ch0,l1f)) 
      parameter(jb=verify(ch0,ch1,l4f)) 
      parameter(jc=verify(ch1,sub1,l1f)) 
      parameter(jd=verify(ch2,sub2,l4f)) 
      parameter(je=verify(ch2,sub3,l1f)) 
      parameter(jf=verify(ch2,'abcdefghij',l4f)) 
      parameter(jg=verify(ch2,'kjihgfedcba',l1f)) 
      parameter(jh=verify(ch2,'xxxxxxxxxxxxxxxxx',l4f)) 
      parameter(ji=verify(ch3,ch3,l1f)) 
      parameter(jj=verify(ch3,'                 ',l4f)) 
      parameter(jk=verify(ch3,'vx',l4f)) 
      parameter(ka=verify(ch0,ch0,l1t)) 
      parameter(kb=verify(ch0,ch1,l4t)) 
      parameter(kc=verify(ch1,sub1,l1t)) 
      parameter(kd=verify(ch2,sub2,l4t)) 
      parameter(ke=verify(ch2,sub3,l1t)) 
      parameter(kf=verify(ch2,'abcdefghij',l4t)) 
      parameter(kg=verify(ch2,'kjihgfedcba',l1t)) 
      parameter(kh=verify(ch2,'xxxxxxxxxxxxxxxxx',l4t)) 
      parameter(ki=verify(ch3,ch3,l1t)) 
      parameter(kj=verify(ch3,'                 ',l4t)) 
      parameter(kk=verify(ch3,'vx',l4t)) 

      do i=1,3
        call checki4(ia(i),verify(ch0(i),ch0(i))) 
        call checki4(ib(i),verify(ch0(i),ch1)) 
        call checki4(ic(i),verify(ch1,sub1(i))) 
        call checki4(id(i),verify(ch2(i),sub2(i))) 
        call checki4(ie(i),verify(ch2(i),sub3)) 
        call checki4(if(i),verify(ch2(i),'abcdefghij')) 
        call checki4(ig(i),verify(ch2(i),'kjihgfedcba')) 
        call checki4(ih(i),verify(ch2(i),'xxxxxxxxxxxxxxxxx')) 
        call checki4(ja(i),verify(ch0(i),ch0(i),l1f)) 
        call checki4(jb(i),verify(ch0(i),ch1,l4f(i))) 
        call checki4(jc(i),verify(ch1,sub1(i),l1f))
        call checki4(jd(i),verify(ch2(i),sub2(i),l4f(i))) 
        call checki4(je(i),verify(ch2(i),sub3,l1f)) 
        call checki4(jf(i),verify(ch2(i),'abcdefghij',l4f(i))) 
        call checki4(jg(i),verify(ch2(i),'kjihgfedcba',l1f)) 
        call checki4(jh(i),verify(ch2(i),'xxxxxxxxxxxxxxxxx',l4f(i))) 
        call checki4(jj(i),verify(ch3,'                 ',l4f(i))) 
        call checki4(jk(i),verify(ch3,'vx',l4f(i))) 
        call checki4(ka(i),verify(ch0(i),ch0(i),l1t)) 
        call checki4(kb(i),verify(ch0(i),ch1,l4t(i))) 
        call checki4(kc(i),verify(ch1,sub1(i),l1t))
        call checki4(kd(i),verify(ch2(i),sub2(i),l4t(i))) 
        call checki4(ke(i),verify(ch2(i),sub3,l1t)) 
        call checki4(kf(i),verify(ch2(i),'abcdefghij',l4t(i))) 
        call checki4(kg(i),verify(ch2(i),'kjihgfedcba',l1t)) 
        call checki4(kh(i),verify(ch2(i),'xxxxxxxxxxxxxxxxx',l4t(i))) 
        call checki4(kj(i),verify(ch3,'                 ',l4t(i))) 
        call checki4(kk(i),verify(ch3,'vx',l4t(i))) 
      enddo
      call checki4(ii,verify(ch3,ch3)) 
      call checki4(ij,verify(ch3,'                 ')) 
      call checki4(ik,verify(ch3,'vx')) 
      call checki4(ji,verify(ch3,ch3,l1f)) 
      call checki4(ki,verify(ch3,ch3,l1t)) 

      print *,'*** ok ***'
      end

      subroutine checki4(i4,i4t)
      integer*4 i4,i4t
      if (i4.ne.i4t) then
        print *,i4,i4t
        print *,'??? ng ???'
        stop 1
      endif
      end

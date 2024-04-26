
      character*0    ,parameter,dimension(3):: ch0=''
      character*1    ,parameter             :: ch1='a'
      character*10   ,parameter,dimension(3):: ch2='abcdefghij'
      character*32767,parameter             :: ch3='xxxvxxxv'
      character*1,    parameter,dimension(3):: sub1='a'
      character*3,    parameter,dimension(3):: sub2='def'
      character*5,    parameter             :: sub3='jjjjj'
      integer*4,dimension(3):: ia,ib,ic,id,ie,if,ig,ih
      integer*4,dimension(3):: ja,jb,jc,jd,je,jf,jg,jh,jj,jk
      integer*4,dimension(3):: ka,kb,kc,kd,ke,kf,kg,kh,kj,kk
      integer*4             :: ii,ij,ik,ji,ki
      logical*1,parameter::              l1t=.true.,l1f=.false.
      logical*4,parameter,dimension(3):: l4t=.true.,l4f=.false.

      parameter(ia=scan(ch0,ch0)) 
      parameter(ib=scan(ch0,ch1)) 
      parameter(ic=scan(ch1,sub1)) 
      parameter(id=scan(ch2,sub2)) 
      parameter(ie=scan(ch2,sub3)) 
      parameter(if=scan(ch2,'abcdefghij')) 
      parameter(ig=scan(ch2,'kjihgfedcba')) 
      parameter(ih=scan(ch2,'xxxxxxxxxxxxxxxxx')) 
      parameter(ii=scan(ch3,ch3)) 
      parameter(ij=scan(ch3,'                 ')) 
      parameter(ik=scan(ch3,'vx')) 
      parameter(ja=scan(ch0,ch0,l1f)) 
      parameter(jb=scan(ch0,ch1,l4f)) 
      parameter(jc=scan(ch1,sub1,l1f)) 
      parameter(jd=scan(ch2,sub2,l4f)) 
      parameter(je=scan(ch2,sub3,l1f)) 
      parameter(jf=scan(ch2,'abcdefghij',l4f)) 
      parameter(jg=scan(ch2,'kjihgfedcba',l1f)) 
      parameter(jh=scan(ch2,'xxxxxxxxxxxxxxxxx',l4f)) 
      parameter(ji=scan(ch3,ch3,l1f)) 
      parameter(jj=scan(ch3,'                 ',l4f)) 
      parameter(jk=scan(ch3,'vx',l4f)) 
      parameter(ka=scan(ch0,ch0,l1t)) 
      parameter(kb=scan(ch0,ch1,l4t)) 
      parameter(kc=scan(ch1,sub1,l1t)) 
      parameter(kd=scan(ch2,sub2,l4t)) 
      parameter(ke=scan(ch2,sub3,l1t)) 
      parameter(kf=scan(ch2,'abcdefghij',l4t)) 
      parameter(kg=scan(ch2,'kjihgfedcba',l1t)) 
      parameter(kh=scan(ch2,'xxxxxxxxxxxxxxxxx',l4t)) 
      parameter(ki=scan(ch3,ch3,l1t)) 
      parameter(kj=scan(ch3,'                 ',l4t)) 
      parameter(kk=scan(ch3,'vx',l4t)) 

      do i=1,3
        call checki4(ia(i),scan(ch0(i),ch0(i))) 
        call checki4(ib(i),scan(ch0(i),ch1)) 
        call checki4(ic(i),scan(ch1,sub1(i))) 
        call checki4(id(i),scan(ch2(i),sub2(i))) 
        call checki4(ie(i),scan(ch2(i),sub3)) 
        call checki4(if(i),scan(ch2(i),'abcdefghij')) 
        call checki4(ig(i),scan(ch2(i),'kjihgfedcba')) 
        call checki4(ih(i),scan(ch2(i),'xxxxxxxxxxxxxxxxx')) 
        call checki4(ja(i),scan(ch0(i),ch0(i),l1f)) 
        call checki4(jb(i),scan(ch0(i),ch1,l4f(i))) 
        call checki4(jc(i),scan(ch1,sub1(i),l1f))
        call checki4(jd(i),scan(ch2(i),sub2(i),l4f(i))) 
        call checki4(je(i),scan(ch2(i),sub3,l1f)) 
        call checki4(jf(i),scan(ch2(i),'abcdefghij',l4f(i))) 
        call checki4(jg(i),scan(ch2(i),'kjihgfedcba',l1f)) 
        call checki4(jh(i),scan(ch2(i),'xxxxxxxxxxxxxxxxx',l4f(i))) 
        call checki4(jj(i),scan(ch3,'                 ',l4f(i))) 
        call checki4(jk(i),scan(ch3,'vx',l4f(i))) 
        call checki4(ka(i),scan(ch0(i),ch0(i),l1t)) 
        call checki4(kb(i),scan(ch0(i),ch1,l4t(i))) 
        call checki4(kc(i),scan(ch1,sub1(i),l1t))
        call checki4(kd(i),scan(ch2(i),sub2(i),l4t(i))) 
        call checki4(ke(i),scan(ch2(i),sub3,l1t)) 
        call checki4(kf(i),scan(ch2(i),'abcdefghij',l4t(i))) 
        call checki4(kg(i),scan(ch2(i),'kjihgfedcba',l1t)) 
        call checki4(kh(i),scan(ch2(i),'xxxxxxxxxxxxxxxxx',l4t(i))) 
        call checki4(kj(i),scan(ch3,'                 ',l4t(i))) 
        call checki4(kk(i),scan(ch3,'vx',l4t(i))) 
      enddo
      call checki4(ii,scan(ch3,ch3)) 
      call checki4(ij,scan(ch3,'                 ')) 
      call checki4(ik,scan(ch3,'vx')) 
      call checki4(ji,scan(ch3,ch3,l1f)) 
      call checki4(ki,scan(ch3,ch3,l1t)) 

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

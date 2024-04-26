
      character*0    ,parameter,dimension(3):: ch0=''
      character*1    ,parameter,dimension(3):: ch1='a'
      character*10   ,parameter,dimension(3):: ch2='abcdefghij'
      character*32767,parameter,dimension(3):: ch3='xxxvxxxz'
      integer*4,dimension(3)::    ia,ib,ic,id,ie,if,ig,ih,ii,ij,ik
      integer*4,dimension(3)::    ja,jb,jc,jd,je,jf,jg,jh,ji,jj,jk
      integer*4,dimension(3)::    ka,kb,kc,kd,ke,kf,kg,kh,ki,kj,kk
      logical*1,parameter,dimension(3):: l1t=.true.,l1f=.false.
      logical*4,parameter,dimension(3):: l4t=.true.,l4f=.false.

      parameter(ia=index(STRING=ch0,SUBSTRING=ch0)) 
      parameter(ib=index(       ch0,SUBSTRING=ch1)) 
      parameter(ic=index(ch1,'a')) 
      parameter(id=index(ch2,'def')) 
      parameter(ie=index(ch2,'aaaaa')) 
      parameter(if=index(ch2,'abcdefghij')) 
      parameter(ig=index(ch2,'abcdefghijk')) 
      parameter(ih=index(ch2,'xxxxxxxxxxxxxxxxx')) 
      parameter(ii=index(ch3,ch3)) 
      parameter(ij=index(ch3,'                 ')) 
      parameter(ik=index(ch3,'xx')) 
      parameter(ja=index(STRING=ch0,SUBSTRING=ch0,BACK=l1f)) 
      parameter(jb=index(       ch0,SUBSTRING=ch1,BACK=l4f)) 
      parameter(jc=index(BACK=l1f,SUBSTRING='a',STRING=ch1)) 
      parameter(jd=index(ch2,'def',l4f)) 
      parameter(je=index(ch2,'aaaaa',l1f)) 
      parameter(jf=index(ch2,'abcdefghij',l4f)) 
      parameter(jg=index(ch2,'abcdefghijk',l1f)) 
      parameter(jh=index(ch2,'xxxxxxxxxxxxxxxxx',l4f)) 
      parameter(ji=index(ch3,ch3,l1f)) 
      parameter(jj=index(ch3,'                 ',l4f)) 
      parameter(jk=index(ch3,'xx',l4f)) 
      parameter(ka=index(STRING=ch0,SUBSTRING=ch0,BACK=l1t)) 
      parameter(kb=index(       ch0,SUBSTRING=ch1,BACK=l4t)) 
      parameter(kc=index(BACK=l1t,SUBSTRING='a',STRING=ch1)) 
      parameter(kd=index(ch2,'def',l4t)) 
      parameter(ke=index(ch2,'aaaaa',l1t)) 
      parameter(kf=index(ch2,'abcdefghij',l4t)) 
      parameter(kg=index(ch2,'abcdefghijk',l1t)) 
      parameter(kh=index(ch2,'xxxxxxxxxxxxxxxxx',l4t)) 
      parameter(ki=index(ch3,ch3,l1t)) 
      parameter(kj=index(ch3,'                 ',l4t)) 
      parameter(kk=index(ch3,'xx',l4t)) 

      do i=1,3
        call checki4(ia(i),index(STRING=ch0(i),SUBSTRING=ch0(i))) 
        call checki4(ib(i),index(       ch0(i),SUBSTRING=ch1(i))) 
        call checki4(ic(i),index(ch1(i),'a')) 
        call checki4(id(i),index(ch2(i),'def')) 
        call checki4(ie(i),index(ch2(i),'aaaaa')) 
        call checki4(if(i),index(ch2(i),'abcdefghij')) 
        call checki4(ig(i),index(ch2(i),'abcdefghijk')) 
        call checki4(ih(i),index(ch2(i),'xxxxxxxxxxxxxxxxx')) 
        call checki4(ii(i),index(ch3(i),ch3(i))) 
        call checki4(ij(i),index(ch3(i),'                 ')) 
        call checki4(ik(i),index(ch3(i),'xx')) 
        call checki4(ja(i),index(STRING=ch0(i),SUBSTRING=ch0(i),
     +                           BACK=l1f(i))) 
        call checki4(jb(i),index(       ch0(i),SUBSTRING=ch1(i),
     +                           BACK=l4f(i))) 
        call checki4(jc(i),index(BACK=l1f(i),SUBSTRING='a',
     +                           STRING=ch1(i))) 
        call checki4(jd(i),index(ch2(i),'def',l4f(i))) 
        call checki4(je(i),index(ch2(i),'aaaaa',l1f(i))) 
        call checki4(jf(i),index(ch2(i),'abcdefghij',l4f(i))) 
        call checki4(jg(i),index(ch2(i),'abcdefghijk',l1f(i))) 
        call checki4(jh(i),index(ch2(i),'xxxxxxxxxxxxxxxxx',l4f(i))) 
        call checki4(ji(i),index(ch3(i),ch3(i),l1f(i))) 
        call checki4(jj(i),index(ch3(i),'                 ',l4f(i))) 
        call checki4(jk(i),index(ch3(i),'xx',l4f(i))) 
        call checki4(ka(i),index(STRING=ch0(i),SUBSTRING=ch0(i),
     +                           BACK=l1t(i))) 
        call checki4(kb(i),index(       ch0(i),SUBSTRING=ch1(i),
     +                           BACK=l4t(i))) 
        call checki4(kc(i),index(BACK=l1t(i),SUBSTRING='a',
     +                           STRING=ch1(i))) 
        call checki4(kd(i),index(ch2(i),'def',l4t(i))) 
        call checki4(ke(i),index(ch2(i),'aaaaa',l1t(i))) 
        call checki4(kf(i),index(ch2(i),'abcdefghij',l4t(i))) 
        call checki4(kg(i),index(ch2(i),'abcdefghijk',l1t(i))) 
        call checki4(kh(i),index(ch2(i),'xxxxxxxxxxxxxxxxx',l4t(i))) 
        call checki4(ki(i),index(ch3(i),ch3(i),l1t(i))) 
        call checki4(kj(i),index(ch3(i),'                 ',l4t(i))) 
        call checki4(kk(i),index(ch3(i),'xx',l4t(i))) 
      enddo
      
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


      character*0    ,parameter:: ch0=''
      character*1    ,parameter:: ch1='a'
      character*10   ,parameter:: ch2='abcdefghij'
      character*32767,parameter:: ch3='xxxvxxxv'
      integer*4    ia,ib,ic,id,ie,if,ig,ih,ii,ij,ik
      integer*4    ja,jb,jc,jd,je,jf,jg,jh,ji,jj,jk
      integer*4    ka,kb,kc,kd,ke,kf,kg,kh,ki,kj,kk
      logical*1,parameter:: l1t=.true.,l1f=.false.
      logical*4,parameter:: l4t=.true.,l4f=.false.

      parameter(ia=scan(STRING=ch0,SET=ch0)) 
      parameter(ib=scan(       ch0,SET=ch1)) 
      parameter(ic=scan(ch1,'a')) 
      parameter(id=scan(ch2,'def')) 
      parameter(ie=scan(ch2,'jjjjj')) 
      parameter(if=scan(ch2,'abcdefghij')) 
      parameter(ig=scan(ch2,'kjihgfedcba')) 
      parameter(ih=scan(ch2,'xxxxxxxxxxxxxxxxx')) 
      parameter(ii=scan(ch3,ch3)) 
      parameter(ij=scan(ch3,'                 ')) 
      parameter(ik=scan(ch3,'vx')) 
      parameter(ja=scan(STRING=ch0,SET=ch0,BACK=l1f)) 
      parameter(jb=scan(       ch0,SET=ch1,BACK=l4f)) 
      parameter(jc=scan(BACK=l1f,SET='a',STRING=ch1)) 
      parameter(jd=scan(ch2,'def',l4f)) 
      parameter(je=scan(ch2,'jjjjj',l1f)) 
      parameter(jf=scan(ch2,'abcdefghij',l4f)) 
      parameter(jg=scan(ch2,'kjihgfedcba',l1f)) 
      parameter(jh=scan(ch2,'xxxxxxxxxxxxxxxxx',l4f)) 
      parameter(ji=scan(ch3,ch3,l1f)) 
      parameter(jj=scan(ch3,'                 ',l4f)) 
      parameter(jk=scan(ch3,'vx',l4f)) 
      parameter(ka=scan(STRING=ch0,SET=ch0,BACK=l1t)) 
      parameter(kb=scan(       ch0,SET=ch1,BACK=l4t)) 
      parameter(kc=scan(BACK=l1t,SET='a',STRING=ch1)) 
      parameter(kd=scan(ch2,'def',l4t)) 
      parameter(ke=scan(ch2,'jjjjj',l1t)) 
      parameter(kf=scan(ch2,'abcdefghij',l4t)) 
      parameter(kg=scan(ch2,'kjihgfedcba',l1t)) 
      parameter(kh=scan(ch2,'xxxxxxxxxxxxxxxxx',l4t)) 
      parameter(ki=scan(ch3,ch3,l1t)) 
      parameter(kj=scan(ch3,'                 ',l4t)) 
      parameter(kk=scan(ch3,'vx',l4t)) 

      call checki4(ia,scan(STRING=ch0,SET=ch0)) 
      call checki4(ib,scan(       ch0,SET=ch1)) 
      call checki4(ic,scan(ch1,'a')) 
      call checki4(id,scan(ch2,'def')) 
      call checki4(ie,scan(ch2,'jjjjj')) 
      call checki4(if,scan(ch2,'abcdefghij')) 
      call checki4(ig,scan(ch2,'kjihgfedcba')) 
      call checki4(ih,scan(ch2,'xxxxxxxxxxxxxxxxx')) 
      call checki4(ii,scan(ch3,ch3)) 
      call checki4(ij,scan(ch3,'                 ')) 
      call checki4(ik,scan(ch3,'vx')) 
      call checki4(ja,scan(STRING=ch0,SET=ch0,BACK=l1f)) 
      call checki4(jb,scan(       ch0,SET=ch1,BACK=l4f)) 
      call checki4(jc,scan(BACK=l1f,SET='a',STRING=ch1)) 
      call checki4(jd,scan(ch2,'def',l4f)) 
      call checki4(je,scan(ch2,'jjjjj',l1f)) 
      call checki4(jf,scan(ch2,'abcdefghij',l4f)) 
      call checki4(jg,scan(ch2,'kjihgfedcba',l1f)) 
      call checki4(jh,scan(ch2,'xxxxxxxxxxxxxxxxx',l4f)) 
      call checki4(ji,scan(ch3,ch3,l1f)) 
      call checki4(jj,scan(ch3,'                 ',l4f)) 
      call checki4(jk,scan(ch3,'vx',l4f)) 
      call checki4(ka,scan(STRING=ch0,SET=ch0,BACK=l1t)) 
      call checki4(kb,scan(       ch0,SET=ch1,BACK=l4t)) 
      call checki4(kc,scan(BACK=l1t,SET='a',STRING=ch1)) 
      call checki4(kd,scan(ch2,'def',l4t)) 
      call checki4(ke,scan(ch2,'jjjjj',l1t)) 
      call checki4(kf,scan(ch2,'abcdefghij',l4t)) 
      call checki4(kg,scan(ch2,'kjihgfedcba',l1t)) 
      call checki4(kh,scan(ch2,'xxxxxxxxxxxxxxxxx',l4t)) 
      call checki4(ki,scan(ch3,ch3,l1t)) 
      call checki4(kj,scan(ch3,'                 ',l4t)) 
      call checki4(kk,scan(ch3,'vx',l4t)) 

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

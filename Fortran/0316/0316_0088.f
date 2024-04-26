
      character*0    ,parameter:: ch0=''
      character*1    ,parameter:: ch1='a'
      character*10   ,parameter:: ch2='abcdefghij'
      character*32767,parameter:: ch3='xxxvxxxv'
      integer*4    ia,ib,ic,id,ie,if,ig,ih,ii,ij,ik
      integer*4    ja,jb,jc,jd,je,jf,jg,jh,ji,jj,jk
      integer*4    ka,kb,kc,kd,ke,kf,kg,kh,ki,kj,kk
      logical*1,parameter:: l1t=.true.,l1f=.false.
      logical*4,parameter:: l4t=.true.,l4f=.false.

      parameter(ia=verify(STRING=ch0,SET=ch0)) 
      parameter(ib=verify(       ch0,SET=ch1)) 
      parameter(ic=verify(ch1,'z')) 
      parameter(id=verify(ch2,'def')) 
      parameter(ie=verify(ch2,'jjjjj')) 
      parameter(if=verify(ch2,'abcdefghij')) 
      parameter(ig=verify(ch2,'kjihgfedcba')) 
      parameter(ih=verify(ch2,'xxxxxxxxxxxxxxxxx')) 
      parameter(ii=verify(ch3,ch3)) 
      parameter(ij=verify(ch3,'                 ')) 
      parameter(ik=verify(ch3,'vx')) 
      parameter(ja=verify(STRING=ch0,SET=ch0,BACK=l1f)) 
      parameter(jb=verify(       ch0,SET=ch1,BACK=l4f)) 
      parameter(jc=verify(BACK=l1f,SET='z',STRING=ch1)) 
      parameter(jd=verify(ch2,'def',l4f)) 
      parameter(je=verify(ch2,'jjjjj',l1f)) 
      parameter(jf=verify(ch2,'abcdefghij',l4f)) 
      parameter(jg=verify(ch2,'kjihgfedcba',l1f)) 
      parameter(jh=verify(ch2,'xxxxxxxxxxxxxxxxx',l4f)) 
      parameter(ji=verify(ch3,ch3,l1f)) 
      parameter(jj=verify(ch3,'                 ',l4f)) 
      parameter(jk=verify(ch3,'vx',l4f)) 
      parameter(ka=verify(STRING=ch0,SET=ch0,BACK=l1t)) 
      parameter(kb=verify(       ch0,SET=ch1,BACK=l4t)) 
      parameter(kc=verify(BACK=l1t,SET='z',STRING=ch1)) 
      parameter(kd=verify(ch2,'def',l4t)) 
      parameter(ke=verify(ch2,'jjjjj',l1t)) 
      parameter(kf=verify(ch2,'abcdefghij',l4t)) 
      parameter(kg=verify(ch2,'kjihgfedcba',l1t)) 
      parameter(kh=verify(ch2,'xxxxxxxxxxxxxxxxx',l4t)) 
      parameter(ki=verify(ch3,ch3,l1t)) 
      parameter(kj=verify(ch3,'                 ',l4t)) 
      parameter(kk=verify(ch3,'vx',l4t)) 

      call checki4(ia,verify(STRING=ch0,SET=ch0)) 
      call checki4(ib,verify(       ch0,SET=ch1)) 
      call checki4(ic,verify(ch1,'z')) 
      call checki4(id,verify(ch2,'def')) 
      call checki4(ie,verify(ch2,'jjjjj')) 
      call checki4(if,verify(ch2,'abcdefghij')) 
      call checki4(ig,verify(ch2,'kjihgfedcba')) 
      call checki4(ih,verify(ch2,'xxxxxxxxxxxxxxxxx')) 
      call checki4(ii,verify(ch3,ch3)) 
      call checki4(ij,verify(ch3,'                 ')) 
      call checki4(ik,verify(ch3,'vx')) 
      call checki4(ja,verify(STRING=ch0,SET=ch0,BACK=l1f)) 
      call checki4(jb,verify(       ch0,SET=ch1,BACK=l4f)) 
      call checki4(jc,verify(BACK=l1f,SET='z',STRING=ch1)) 
      call checki4(jd,verify(ch2,'def',l4f)) 
      call checki4(je,verify(ch2,'jjjjj',l1f)) 
      call checki4(jf,verify(ch2,'abcdefghij',l4f)) 
      call checki4(jg,verify(ch2,'kjihgfedcba',l1f)) 
      call checki4(jh,verify(ch2,'xxxxxxxxxxxxxxxxx',l4f)) 
      call checki4(ji,verify(ch3,ch3,l1f)) 
      call checki4(jj,verify(ch3,'                 ',l4f)) 
      call checki4(jk,verify(ch3,'vx',l4f)) 
      call checki4(ka,verify(STRING=ch0,SET=ch0,BACK=l1t)) 
      call checki4(kb,verify(       ch0,SET=ch1,BACK=l4t)) 
      call checki4(kc,verify(BACK=l1t,SET='z',STRING=ch1)) 
      call checki4(kd,verify(ch2,'def',l4t)) 
      call checki4(ke,verify(ch2,'jjjjj',l1t)) 
      call checki4(kf,verify(ch2,'abcdefghij',l4t)) 
      call checki4(kg,verify(ch2,'kjihgfedcba',l1t)) 
      call checki4(kh,verify(ch2,'xxxxxxxxxxxxxxxxx',l4t)) 
      call checki4(ki,verify(ch3,ch3,l1t)) 
      call checki4(kj,verify(ch3,'                 ',l4t)) 
      call checki4(kk,verify(ch3,'vx',l4t)) 

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

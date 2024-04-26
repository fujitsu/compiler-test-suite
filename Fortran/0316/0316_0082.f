
      character*0    ,parameter:: ch0=''
      character*1    ,parameter:: ch1='a'
      character*10   ,parameter:: ch2='abcdefghij'
      character*32767,parameter:: ch3='xxxvxxxz'
      integer*4    ia,ib,ic,id,ie,if,ig,ih,ii,ij,ik
      integer*4    ja,jb,jc,jd,je,jf,jg,jh,ji,jj,jk
      integer*4    ka,kb,kc,kd,ke,kf,kg,kh,ki,kj,kk
      logical*1,parameter:: l1t=.true.,l1f=.false.
      logical*4,parameter:: l4t=.true.,l4f=.false.

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

      call checki4(ia,index(STRING=ch0,SUBSTRING=ch0)) 
      call checki4(ib,index(       ch0,SUBSTRING=ch1)) 
      call checki4(ic,index(ch1,'a')) 
      call checki4(id,index(ch2,'def')) 
      call checki4(ie,index(ch2,'aaaaa')) 
      call checki4(if,index(ch2,'abcdefghij')) 
      call checki4(ig,index(ch2,'abcdefghijk')) 
      call checki4(ih,index(ch2,'xxxxxxxxxxxxxxxxx')) 
      call checki4(ii,index(ch3,ch3)) 
      call checki4(ij,index(ch3,'                 ')) 
      call checki4(ik,index(ch3,'xx')) 
      call checki4(ja,index(STRING=ch0,SUBSTRING=ch0,BACK=l1f)) 
      call checki4(jb,index(       ch0,SUBSTRING=ch1,BACK=l4f)) 
      call checki4(jc,index(BACK=l1f,SUBSTRING='a',STRING=ch1)) 
      call checki4(jd,index(ch2,'def',l4f)) 
      call checki4(je,index(ch2,'aaaaa',l1f)) 
      call checki4(jf,index(ch2,'abcdefghij',l4f)) 
      call checki4(jg,index(ch2,'abcdefghijk',l1f)) 
      call checki4(jh,index(ch2,'xxxxxxxxxxxxxxxxx',l4f)) 
      call checki4(ji,index(ch3,ch3,l1f)) 
      call checki4(jj,index(ch3,'                 ',l4f)) 
      call checki4(jk,index(ch3,'xx',l4f)) 
      call checki4(ka,index(STRING=ch0,SUBSTRING=ch0,BACK=l1t)) 
      call checki4(kb,index(       ch0,SUBSTRING=ch1,BACK=l4t)) 
      call checki4(kc,index(BACK=l1t,SUBSTRING='a',STRING=ch1)) 
      call checki4(kd,index(ch2,'def',l4t)) 
      call checki4(ke,index(ch2,'aaaaa',l1t)) 
      call checki4(kf,index(ch2,'abcdefghij',l4t)) 
      call checki4(kg,index(ch2,'abcdefghijk',l1t)) 
      call checki4(kh,index(ch2,'xxxxxxxxxxxxxxxxx',l4t)) 
      call checki4(ki,index(ch3,ch3,l1t)) 
      call checki4(kj,index(ch3,'                 ',l4t)) 
      call checki4(kk,index(ch3,'xx',l4t)) 

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

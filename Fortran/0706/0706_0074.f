      call s1
      print *,'pass'
      end
      subroutine s1
      interface
      subroutine ss(
     1          c1,c2,c3,c4,c5,c6,c7,c8,c9,
     1          ca,cb,cc,cd,ce,cf,cg,ch,ci,
     1          cj,ck,cl,cm,cn,co,cp,cq,cr,
     1          cs,i,g)
      character*(i),dimension(:),pointer:: 
     1          c1,c2,c3,c4,c5,c6,c7,c8,c9,
     1          ca,cb,cc,cd,ce,cf,cg,ch,ci,
     1          cj,ck,cl,cm,cn,co,cp,cq,cr,
     1          cs
      integer  ,dimension(:),pointer::g
      end subroutine 
      end interface
      integer  ,dimension(:),pointer::g
      character*(6),dimension(:),pointer:: 
     1          c1,c2,c3,c4,c5,c6,c7,c8,c9,
     1          ca,cb,cc,cd,ce,cf,cg,ch,ci,
     1          cj,ck,cl,cm,cn,co,cp,cq,cr,
     1          cs
      allocate(
     1          c1(2),c2(2),c3(2),c4(2),c5(2),c6(2),c7(2),c8(2),c9(2),
     1          ca(2),cb(2),cc(2),cd(2),ce(2),cf(2),cg(2),ch(2),ci(2),
     1          cj(2),ck(2),cl(2),cm(2),cn(2),co(2),cp(2),cq(2),cr(2),
     1          cj(2),ck(2),cl(2),cm(2),cn(2),co(2),cp(2),cq(2),cr(2),
     1          cs(2))
      c1(:)(3:5)='abc';c2(:)(3:5)='abc';c3(:)(3:5)='abc';c4(:)(3:5)='abc
     1';c5(:)(3:5)='abc';c6(:)(3:5)='abc';c7(:)(3:5)='abc';c8(:)(3:5)='a
     1bc';c9(:)(3:5)='abc';ca(:)(3:5)='abc';cb(:)(3:5)='abc';cc(:)(3:5)=
     1'abc';cd(:)(3:5)='abc';ce(:)(3:5)='abc';cf(:)(3:5)='abc';cg(:)(3:5
     1)='abc';ch(:)(3:5)='abc';ci(:)(3:5)='abc';cj(:)(3:5)='abc';ck(:)(3
     1:5)='abc';cl(:)(3:5)='abc';cm(:)(3:5)='abc';cn(:)(3:5)='abc';co(:)
     1(3:5)='abc';cp(:)(3:5)='abc';cq(:)(3:5)='abc';cr(:)(3:5)='abc';cs(
     1:)(3:5)='abc'
      call       ss(
     1          c1,c2,c3,c4,c5,c6,c7,c8,c9,
     1          ca,cb,cc,cd,ce,cf,cg,ch,ci,
     1          cj,ck,cl,cm,cn,co,cp,cq,cr,
     1          cs,6,g)
      data i/1/,j/-1/,k/0/,ii/3/,jj/-3/
      call v(c1(g)(i+3:i+5))
      call v(c2(g)(i:i+2))
      call v(c3(g)(3+i:i+5))
      call v(c4(g)(i:2+i))
      call v(c5(g)(-j+3:-j+5))
      call v(c6(g)(-j:-j+2))
      call v(c7(g)(3-j:-j+5))
      call v(c8(g)(-j:2-j))
      call v(c9(g)(k+i+3:k+i+5))
      call v(ca(g)(k+i:k+i+2))
      call v(cb(g)(3+i+k:i+5+k))
      call v(cc(g)(i+k:2+i+k))
      call v(cd(g)(4:6))
      call v(ce(g)(4+k:6+k))
      call v(cf(g)(4*i:6*i))
      call v(cg(g)(i*4:6*i))
      call v(ch(g)(i*4:i*6))
      call v(ci(g)(3+i:5+i))
      call v(cj(g)(3+i:i+5))
      call v(ck(g)(3+i+k:6))
      call v(cl(g)(i*4+k:i*6))
      call v(cm(g)(3+i+k:5+i))
      call v(cn(g)(3+i+k:i+5))
      call v(co(g)(3+i-k:6))
      call v(cp(g)(-k+i+3:-k+i+5))
      call v(cq(g)(-k+i+k+3:-k+i+k+5))
      call v(cr(g)(-k+i+k+3:-k+i+k+5))
      call v(cs(g)(4-k:6-k))
      end
      subroutine ss(
     1          c1,c2,c3,c4,c5,c6,c7,c8,c9,
     1          ca,cb,cc,cd,ce,cf,cg,ch,ci,
     1          cj,ck,cl,cm,cn,co,cp,cq,cr,
     1          cs,n,g)
      character(len=n),dimension(:),pointer:: 
     1          c1,c2,c3,c4,c5,c6,c7,c8,c9,
     1          ca,cb,cc,cd,ce,cf,cg,ch,ci,
     1          cj,ck,cl,cm,cn,co,cp,cq,cr,
     1          cs
      integer,pointer,dimension(:)::g
      allocate(g(2));g(2)=1;g(1)=2
      data i/1/,j/-1/,k/0/,ii/3/,jj/-3/
      c1(:)(i+3:i+5)=c1(:)(ii:ii+2)
      call v(c1(g)(i+3:i+5))
      if (c1(2)(4:6)/='abc')print *,'fail'
      c2(:)(i:i+2)=c2(:)(ii:ii+2)
      call v(c2(g)(i:i+2))
      if (c2(2)(1:3)/='abc')print *,'fail'
      c3(:)(3+i:i+5)=c3(:)(ii:ii+2)
      call v(c3(g)(3+i:i+5))
      if (c3(2)(4:6)/='abc')print *,'fail'
      c4(:)(i:2+i)=c4(:)(ii:ii+2)
      call v(c4(g)(i:2+i))
      if (c4(2)(i:3)/='abc')print *,'fail'
      c5(:)(-j+3:-j+5)=c5(:)(ii:ii+2)
      call v(c5(g)(-j+3:-j+5))
      if (c5(2)(4:6)/='abc')print *,'fail'
      c6(:)(-j:-j+2)=c6(:)(ii:-j+4)
      call v(c6(g)(-j:-j+2))
      if (c6(2)(1:3)/='abc')print *,'fail'
      c7(:)(3-j:-j+5)=c7(:)(-jj:ii+3)
      call v(c7(g)(3-j:-j+5))
      if (c7(2)(4:6)/='abc')print *,'fail'
      c8(:)(-j:2-j)=c8(:)(-jj:-jj)//'bc'
      call v(c8(g)(-j:2-j))
      if (c8(2)(-j:3)/='abc')print *,'fail'
      c9(:)(k+i+3:k+i+5)=c9(:)(ii+k:ii+k+2)
      call v(c9(g)(k+i+3:k+i+5))
      if (c9(2)(4:6)/='abc')print *,'fail'
      ca(:)(k+i:k+i+2)=ca(:)(k+ii:k+ii+2)
      call v(ca(g)(k+i:k+i+2))
      if (ca(2)(1:3)/='abc')print *,'fail'
      cb(:)(3+i+k:i+5+k)=cb(:)(ii+k:ii+k+2)
      call v(cb(g)(3+i+k:i+5+k))
      if (cb(2)(4:6)/='abc')print *,'fail'
      cc(:)(i+k:2+i+k)=cc(:)(ii:ii+2)
      call v(cc(g)(i+k:2+i+k))
      if (cc(2)(i+k:3)/='abc')print *,'fail'
      cd(:)(4:6)=cd(:)(3:5)
      call v(cd(g)(4:6))
      if (cd(2)(4:6)/='abc')print *,'fail'
      ce(:)(4+k:6+k)=ce(:)(3+k:5+k)
      call v(ce(g)(4+k:6+k))
      if (ce(2)(4:6)/='abc')print *,'fail'
      cf(:)(4*i:6*i)=cf(:)(3*i:5*i)
      call v(cf(g)(4*i:6*i))
      if (cf(2)(4:6)/='abc')print *,'fail'
      cg(:)(i*4:6*i)=cg(:)(i*3:5*i)
      call v(cg(g)(i*4:6*i))
      if (cg(2)(4:6)/='abc')print *,'fail'
      ch(:)(i*4:i*6)=ch(:)(i*3:i*5)
      call v(ch(g)(i*4:i*6))
      if (ch(2)(4:6)/='abc')print *,'fail'
      ci(:)(3+i:5+i)=ci(:)(3:i+4)
      call v(ci(g)(3+i:5+i))
      if (ci(2)(4:6)/='abc')print *,'fail'
      cj(:)(3+i:i+5)=cj(:)(i+2:5)
      call v(cj(g)(3+i:i+5))
      if (cj(2)(4:6)/='abc')print *,'fail'
      ck(:)(3+i+k:6)=ck(:)(3:5)
      call v(ck(g)(3+i+k:6))
      if (ck(2)(4:6)/='abc')print *,'fail'
      cl(:)(i*4+k:i*6)=cl(:)(i*3:i*5)
      call v(cl(g)(i*4+k:i*6))
      if (cl(2)(4:6)/='abc')print *,'fail'
      cm(:)(3+i+k:5+i)=cm(:)(3:i+4)
      call v(cm(g)(3+i+k:5+i))
      if (cm(2)(4:6)/='abc')print *,'fail'
      cn(:)(3+i+k:i+5)=cn(:)(i+2:5)
      call v(cn(g)(3+i+k:i+5))
      if (cn(2)(4:6)/='abc')print *,'fail'
      co(:)(3+i-k:6)=co(:)(3:5)
      call v(co(g)(3+i-k:6))
      if (co(2)(4:6)/='abc')print *,'fail'
      cp(:)(-k+i+3:-k+i+5)=cp(:)(ii:-k+ii+2)
      call v(cp(g)(-k+i+3:-k+i+5))
      if (cp(2)(4:6)/='abc')print *,'fail'
      cq(:)(-k+i+k+3:-k+i+k+5)=cq(:)(ii+k:ii+k+2)
      call v(cq(g)(-k+i+k+3:-k+i+k+5))
      if (cq(2)(4:6)/='abc')print *,'fail'
      cr(:)(-k+i+k+3:-k+i+k+5)=cr(:)(ii:ii+2)
      call v(cr(g)(-k+i+k+3:-k+i+k+5))
      if (cr(2)(4+k:6)/='abc')print *,'fail'
      cs(:)(4-k:6-k)=cs(:)(3-k:5-k)
      call v(cs(g)(4-k:6-k))
      if (cs(2)(4:6)/='abc')print *,'fail'
      end
      subroutine v(c)
      character*(*) c(2)
      if (len(c)/=3)print *,'fail'
      if (c(1)/='abc')print *,'fail'; if (c(2)/='abc')print *,'fail'
      end

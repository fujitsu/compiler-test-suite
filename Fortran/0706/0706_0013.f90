c
c ow=g1128
c
      call s1
      print *,'pass'
      end
      subroutine s1
      character*2 a,b,d(2,2)
      parameter (a='ab')
      parameter (b=a(1:2))
      integer,parameter::i1=1,i2=2
      character*(*) c1,c2,c3,c4,c5,c6,c7,c8,c9
      parameter (c1=a(i1:i2),c2=a(:),c3=a(i1:),c4=a(:i2))
      parameter (c5='ab'(i1:i2),c6='ab'(:),c7='ab'(i1:),c8='ab'(:i2))
      parameter (c9='ab'(1:2))
      parameter (d=reshape((/'78','34','56','12'/),(/2,2/)))
      character*(*) d1,d2,d3,d4,d5,d6,d7,d8
      parameter (d1=d(2,2)(i1:i2),d2=d(2,2)(:),d3=d(2,2)(i1:),
     1           d4=d(2,2)(:i2))
      parameter (d5=d(2,i2)(i1:i2),d6=d(2,i2)(:),d7=d(2,i2)(i1:),
     1           d8=d(2,i2)(:i2))
      character*(*),dimension(2):: e1,e2,e3,e4,e5,e6,e7,e8
      parameter (e1=d(2,:)(i1:i2),e2=d(2,:)(:),e3=d(2,:)(i1:),
     1           e4=d(2,:)(:i2))
      parameter (e5=d(i2,:)(i1:i2),e6=d(i2,:)(:),e7=d(i2,:)(i1:),
     1           e8=d(i2,:)(:i2))
      if (len(e1)/=2)call errtra; if (len(e2)/=2)call errtra
      if (len(e3)/=2)call errtra; if (len(e4)/=2)call errtra
      if (len(e8)/=2)call errtra; if (len(e5)/=2)call errtra
      if (len(e6)/=2)call errtra; if (len(e7)/=2)call errtra
      if (e1(1)/='34')call errtra;if (e1(2)/='12')call errtra
      if (e2(1)/='34')call errtra;if (e2(2)/='12')call errtra
      if (e3(1)/='34')call errtra;if (e3(2)/='12')call errtra
      if (e4(1)/='34')call errtra;if (e4(2)/='12')call errtra
      if (e5(1)/='34')call errtra;if (e5(2)/='12')call errtra
      if (e6(1)/='34')call errtra;if (e6(2)/='12')call errtra
      if (e7(1)/='34')call errtra;if (e7(2)/='12')call errtra
      if (e8(1)/='34')call errtra;if (e8(2)/='12')call errtra
      if (len(d1)/=2)call errtra; if (len(d2)/=2)call errtra
      if (len(d3)/=2)call errtra; if (len(d4)/=2)call errtra
      if (len(d8)/=2)call errtra; if (len(d5)/=2)call errtra
      if (len(d6)/=2)call errtra; if (len(d7)/=2)call errtra
      if (d1/='12')call errtra; if (d2/='12')call errtra
      if (d3/='12')call errtra; if (d4/='12')call errtra
      if (d5/='12')call errtra; if (d6/='12')call errtra
      if (d7/='12')call errtra; if (d8/='12')call errtra
      if (len(a)/=2)call errtra; if (len(b)/=2)call errtra
      if (a/='ab')call errtra; if (b/='ab')call errtra
      if (len(c1)/=2)call errtra; if (len(c2)/=2)call errtra
      if (len(c3)/=2)call errtra; if (len(c4)/=2)call errtra
      if (len(c8)/=2)call errtra; if (len(c5)/=2)call errtra
      if (len(c6)/=2)call errtra; if (len(c7)/=2)call errtra
      if (len(c9)/=2)call errtra
      if (c1/='ab')call errtra; if (c2/='ab')call errtra
      if (c3/='ab')call errtra; if (c4/='ab')call errtra
      if (c5/='ab')call errtra; if (c6/='ab')call errtra
      if (c7/='ab')call errtra; if (c8/='ab')call errtra
      if (c9/='ab')call errtra
      end

      call aaaaa
      print *,'pass'
      contains
      subroutine aaaaa
      if(ishftc(size=3,i=3,shift=2).ne.5) call errtra
      if(ishftc(shift=2,size=3,i=3).ne.5) call errtra
      if(ishftc(i=3,shift=2,size=3).ne.5) call errtra
      if(ishft(i=3,shift=1).ne.6) call errtra
      if(ishft(shift=1,i=3).ne.6) call errtra
      if(ibits(i=14,pos=1,len=3).ne.7) call errtra
      if(ibits(len=3,pos=1,i=14).ne.7) call errtra
      if(ibits(pos=1,i=14,len=3).ne.7) call errtra
      if(btest(i=8,pos=3).neqv..true.) call errtra
      if(btest(pos=3,i=8).neqv..true.) call errtra
      if(dim(x=-3,y=2).ne.0) call errtra
      if(dim(y=2,x=-3).ne.0) call errtra
      if(dprod(x=3.0,y=2.0).ne.6.0d0) call errtra
      if(dprod(y=2.0,x=3.0).ne.6.0d0) call errtra
      if(iand(i=1,j=3).ne.1) call errtra
      if(iand(j=3,i=1).ne.1) call errtra
      if(ibclr(i=14,pos=1).ne.12) call errtra
      if(ibclr(pos=1,i=14).ne.12) call errtra
      if(ibset(i=12,pos=1).ne.14) call errtra
      if(ibset(pos=1,i=12).ne.14) call errtra
      if(ieor(i=1,j=3).ne.2) call errtra
      if(ieor(j=3,i=1).ne.2) call errtra
      if(index(string='fortran',substring='r',back=.true.)
     1    .ne.5) call errtra
      if(index(back=.true.,substring='r',string='fortran')
     1    .ne.5) call errtra
      if(index(substring='r',string='fortran',back=.true.)
     1    .ne.5) call errtra
      if(ior(i=1,j=3).ne.3) call errtra
      if(ior(j=3,i=1).ne.3) call errtra
      if(lge(string_a='one',string_b='two').neqv..false.)
     1    call errtra
      if(lge(string_b='two',string_a='one').neqv..false.)
     1    call errtra
      if(lgt(string_a='one',string_b='two').neqv..false.)
     1    call errtra
      if(lgt(string_b='two',string_a='one').neqv..false.)
     1    call errtra
      if(lle(string_a='one',string_b='two').neqv..true.)
     1    call errtra
      if(lle(string_b='two',string_a='one').neqv..true.)
     1    call errtra
      if(llt(string_a='one',string_b='two').neqv..true.)
     1    call errtra
      if(llt(string_b='two',string_a='one').neqv..true.)
     1    call errtra
      if(mod(a=8,p=-5).ne.3) call errtra
      if(mod(p=-5,a=8).ne.3) call errtra
      if(modulo(a=8,p=5).ne.3) call errtra
      if(modulo(p=5,a=8).ne.3) call errtra
      if(scan(string='fortran',set='tr',back=.true.)
     1    .ne.5) call errtra   
      if(scan(set='tr',back=.true.,string='fortran')
     1    .ne.5) call errtra   
      if(scan(back=.true.,set='tr',string='fortran')
     1    .ne.5) call errtra   
      if(set_exponent(x=3.0,i=1).ne.1.5) call errtra
      if(set_exponent(i=1,x=3.0).ne.1.5) call errtra
      if(verify(string='abba',set='a',back=.true.)
     1    .ne.3) call errtra   
      if(verify(set='a',back=.true.,string='abba')
     1    .ne.3) call errtra   
      if(verify(back=.true.,set='a',string='abba')
     1    .ne.3) call errtra   
      end subroutine
      end

      call sub1()
      call sub2()

      print *,'pass'
      end
      module mod1
      contains
       function ifun01(i,j) result(ians)
       integer ,intent(in) ::i,j
       ians=i*j
       end function
       function ifun02(i,j) result(ians)
       real ,intent(in) ::i,j
       ians=i+j
       end function
       function ifun03(i) result(ians)
       integer ,intent(in) ::i
       ians=i*10
       end function
       function ifun04(i) result(ians)
       real    ,intent(in) ::i
       ians=i*100
       end function
      end module
      subroutine sub1()
      use mod1
      interface operator(.eor.)
        module procedure ifun01
        module procedure ifun02
      end interface
      interface operator(.xor.)
        module procedure ifun03
        module procedure ifun04
      end interface
      integer i,j,k
      real a,b,c
      logical lans,tt,ff
       tt=.true.;ff=.false.
      i=2;j=3;k=4
      a=5;b=6;c=7
      ians = i.eor.j
      if (ians.ne.i*j) print *,'fail'
      ians = k.eor.j
      if (ians.ne.k*j) print *,'fail'
      ians = i.eor.k
      if (ians.ne.i*k) print *,'fail'
      ians = .xor.a
      if (ians.ne.a*100) print *,'fail'
      ians = .xor.b
      if (ians.ne.b*100) print *,'fail'
      ians = .xor.c
      if (ians.ne.c*100) print *,'fail'
      lans= tt.neqv.tt
      if (lans.neqv..false.) print *,'fail'
      lans= ff.neqv.ff
      if (lans.neqv..false.) print *,'fail'
      lans= tt.neqv.ff
      if (lans.neqv..true. ) print *,'fail'
      lans= ff.neqv.tt
      if (lans.neqv..true. ) print *,'fail'
      end
      subroutine sub2()
      use mod1
      interface operator(.xor.)
        module procedure ifun01
        module procedure ifun02
      end interface
      interface operator(.eor.)
        module procedure ifun03
        module procedure ifun04
      end interface
      integer i,j,k
      real a,b,c
      logical lans,tt,ff
       tt=.true.;ff=.false.
      i=2;j=3;k=4
      a=5;b=6;c=7
      ians = i.xor.j
      if (ians.ne.i*j) print *,'fail'
      ians = k.xor.j
      if (ians.ne.k*j) print *,'fail'
      ians = i.xor.k
      if (ians.ne.i*k) print *,'fail'
      ians = .eor.a
      if (ians.ne.a*100) print *,'fail'
      ians = .eor.b
      if (ians.ne.b*100) print *,'fail'
      ians = .eor.c
      if (ians.ne.c*100) print *,'fail'
      lans= tt.neqv.tt
      if (lans.neqv..false.) print *,'fail'
      lans= ff.neqv.ff
      if (lans.neqv..false.) print *,'fail'
      lans= tt.neqv.ff
      if (lans.neqv..true. ) print *,'fail'
      lans= ff.neqv.tt
      if (lans.neqv..true. ) print *,'fail'
      end

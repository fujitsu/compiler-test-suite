      call ss1
      print *,' *** pass ***'
      end
      subroutine ss1
      interface
      subroutine chk(a,a1,i,i1,r,r1,ii,ii1,i2,i21)
      character(*) a(*)
      character*5  a1(5)
      integer      i(*), i1(5)
      integer      ii(*), ii1(5), i2(5,*), i21(5,5)
      real         r(*), r1(5)
      optional    ii, ii1
      end subroutine
      end interface

      character*5  a(5), a1(5)
      integer      i(5), i1(5), ii(5), ii1(5), i2(5,5), i21(5,5)
      real         r(5), r1(5)
      call chk(a,a1,i,i1,r,r1,ii,ii1,i2,i21)
      end
      subroutine chk(a,a1,i,i1,r,r1,ii,ii1,i2,i21)
      interface
      subroutine err(name,i)
      character*(11)  name
      integer,optional :: i
      end subroutine
      end interface
      character(*) a(*)
      character*5  a1(5)
      integer      i(*), i1(5)
      integer      ii(*), ii1(5), i2(5,*), i21(5,5)
      real         r(*), r1(5)
      optional    ii, ii1
      if (bit_size(i).ne.bit_size(i1)) call err('bit_size',8) 
      if (digits(i).ne.digits(i1)) call err('digits',6)
      if (epsilon(r).ne.epsilon(r1)) call err('epsilon',7)
      if (huge(i).ne.huge(i1)) call err('huge',4)
      if (kind(i).ne.kind(i1)) call err('kind',4)
      if (len(a).ne.len(a1)) call err('len',3)
      if (maxexponent(r).ne.maxexponent(r1)) call err('maxexponent')
      if (minexponent(r).ne.minexponent(r1)) call err('minexponent')
      if (precision(r).ne.precision(r1)) call err('precision',9)
      if (present(ii).neqv.present(ii1)) call err('present',7)
      if (radix(r).ne.radix(r1)) call err('radix',5)
      if (range(i).ne.range(i1)) call err('range',5)
      if (tiny(r).ne.tiny(r1)) call err('tiny',4)
      if (lbound(i2,2).ne.lbound(i21,2)) call err('lbound',6)
      if (size(i2,1).ne.size(i21,1)) call err('size',4)
      if (ubound(i2,1).ne.ubound(i21,1)) call err('ubound',6)
      end
      subroutine err(name,i)
      character*(11)  name
      integer,optional :: i
      if (present(i).neqv..true.) then
        print *,' error ==> ',name
      else
        print *,' error ==> ',name(1:i)
      endif
      end

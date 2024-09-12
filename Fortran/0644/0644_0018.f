      character*80 str
      integer*4 i
      integer*8 l
      real*4 f
      real*8 d
      real*16 ld
      complex*8 fx
      complex*16 dx
      complex*32 ldx
      structure /tag/
        integer*4 i
        real*16    d
      end structure
      record /tag/ st

      str = 'FFFFFFFF TTTTTTTTT'
      i = 10
      l = 20
      f = 1.0E0
      d = 2.0D0
      ld = 3.0Q0
      fx = (1.1E0,1.2E0)
      dx = (2.1D0,2.2D0)
      ldx = (3.1Q0,3.2Q0)
      st.i = 20
      st.d = 5.0Q0

      call fstr(str)
      call fstr1(str)
      call fi(i)
      call fl(l)
      call ff(f)
      call fd(d)
      call fld(ld)
      call ffx(fx)
      call fdx(dx)
      call fldx(ldx)
      call fst(st)
      stop
      end

      subroutine fstr(str)
      character*80 str
      print *,'RESULT: ',str,' in fstr!'
      call flush(6)
      return
      end

      subroutine fstr1(str)
      character*(*) str
      print *,'RESULT: ',str,' in fstr1!'
      call flush(6)
      return
      end

      subroutine fi(i)
      integer*4 i
      print *,'RESULT: ',i,' in fi!'
      call flush(6)
      return
      end

      subroutine fl(l)
      integer*8 l
      print *,'RESULT: ',l,' in fl!'
      call flush(6)
      return
      end

      subroutine ff(f)
      real*4 f
      print *,'RESULT: ',f,' in ff!'
      call flush(6)
      return
      end

      subroutine fd(d)
      real*8 d
      print *,'RESULT: ',d,' in fd!'
      call flush(6)
      return
      end

      subroutine fld(ld)
      real*16 ld
      print *,'RESULT: ',ld,' in fld!'
      call flush(6)
      return
      end

      subroutine ffx(fx)
      complex*8 fx
      print *,'RESULT: ',fx,' in ffx!'
      call flush(6)
      return
      end

      subroutine fdx(dx)
      complex*16 dx
      print *,'RESULT: ',dx,' in fdx!'
      call flush(6)
      return
      end

      subroutine fldx(ldx)
      complex*32 ldx
      print *,'RESULT: ',ldx,' in fldx!'
      call flush(6)
      return
      end

      subroutine fst(st)
      structure /tag/
        integer*4 i
        real*16    d
      end structure
      record /tag/ st
      print *,'RESULT: ',st.i,st.d,st,' in fst!'
      call flush(6)
      return
      end

module compare
 implicit logical(l)
 parameter (la=(1.0e0,1.0e0) .eq. (1.0e0,1.0e0))
 parameter (lb=(1.0d0,1.0d0) .eq. (1.0d0,1.0d0))
 parameter (lc=(1.0q0,1.0q0) .eq. (1.0q0,1.0q0))
 parameter (ld=(-1.0e0,-1.0e0) .eq. (-1.0e0,-1.0e0))
 parameter (le=(-1.0d0,-1.0d0) .eq. (-1.0d0,-1.0d0))
 parameter (lf=(-1.0q0,-1.0q0) .eq. (-1.0q0,-1.0q0))
 parameter (lg=(1.0e0,-1.0e0) .eq. (1.0e0,-1.0e0))
 parameter (lh=(1.0d0,-1.0d0) .eq. (1.0d0,-1.0d0))
 parameter (li=(1.0q0,-1.0q0) .eq. (1.0q0,-1.0q0))
 parameter (lj=(-1.0e0,1.0e0) .eq. (-1.0e0,1.0e0))
 parameter (lk=(-1.0d0,1.0d0) .eq. (-1.0d0,1.0d0))
 parameter (ll=(-1.0q0,1.0q0) .eq. (-1.0q0,1.0q0))

 parameter (lm=(1.0e0,1.0e0) .ne. (-1.0e0,1.0e0))
 parameter (ln=(1.0d0,1.0d0) .ne. (-1.0d0,1.0d0))
 parameter (lo=(1.0q0,1.0q0) .ne. (-1.0q0,1.0q0))
 parameter (lp=(1.0e0,1.0e0) .ne. (1.0e0,-1.0e0))
 parameter (lq=(1.0d0,1.0d0) .ne. (1.0d0,-1.0d0))
 parameter (lr=(1.0q0,1.0q0) .ne. (1.0q0,-1.0q0))
 parameter (ls=(1.0e0,1.0e0) .ne. (1.1e0,1.0e0))
 parameter (lt=(1.0d0,1.0d0) .ne. (1.1d0,1.0d0))
 parameter (lu=(1.0q0,1.0q0) .ne. (1.1q0,1.0q0))
 parameter (lv=(1.0e0,1.0e0) .ne. (1.0e0,1.1e0))
 parameter (lw=(1.0d0,1.0d0) .ne. (1.0d0,1.1d0))
 parameter (lx=(1.0q0,1.0q0) .ne. (1.0q0,1.1q0))
end module

module cp
 complex(16) x
 parameter (x=(1.0q0,1.234567890123456789012345678901234567890q0))
end module

program main
 integer error
 error = 0
 call sub_compare(error)
 call sub_cp(error)
 if (error /= 0) then
   print *,'+++ ',error,' items NG +++ '
 else
   print *,'*** pass ***'
 endif
end program

subroutine sub_compare(error)
 use compare
 implicit none
 integer error
 if (.not.(la.and.lb.and.lc.and.ld.and.le.and.lf.and.lg.and.lh.and.li.and. &
           lj.and.lk.and.ll)) error = error+1
 if (.not.(lm.and.ln.and.lo.and.lp.and.lq.and.lr.and.ls.and.lt.and.lu.and. &
           lv.and.lw.and.lx)) error = error+1
end subroutine

subroutine sub_cp(error)
 use cp
 integer error
 real*16 a,b
 complex*32 c
 a = 1.0q0
 b = 1.234567890123456789012345678901234567890q0
 c = (1.0q0,1.234567890123456789012345678901234567890q0)

 if (c /= x) error = error+1
 if (real(x,kind=16) /= a) error = error+1
 if (aimag(c) /= b) error = error+1
 if (cmplx(a,b,kind=16) /= c) error = error+1
end subroutine

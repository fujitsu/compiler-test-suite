      program test
      call sub(5,4,4,4,.false.,.true.,.true.)
      stop
      end

      subroutine sub(i, j, k, l, a, b, c)
      implicit none
      integer i, j, k, l, ii, jj, kk, ll, iii, jjj, kkk, lll
      logical a, b, c

      kk = k
      ll = l
      if(b) then
        kk = l
        ll = k
      endif
      ii = i
      jj = j
      if(a) then
        ii = j
        jj = i
      endif
      iii = ii
      jjj = jj
      kkk = kk
      lll = ll
      if(c) then
        iii = kk
        jjj = ll
        kkk = ii
        lll = jj
        if(a .or. b) then
          iii = ll
          jjj = kk
          kkk = jj
          lll = ii
        endif
      endif
      write(*,*) jjj,kkk,iii
      return
      end


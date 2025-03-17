      integer::j(4)
      j=(/2,2,2,2/)
      i1=2;i2=2;i3=2;i4=2
      call sub(i1,i2,i3,i4,j,4)
     print *,'pass'
    end

    subroutine sub(i1,i2,i3,i4,j,n)
      integer::j(n)
      m=0
      if (i1.eq.1.and.i2.eq.1.and.i3.eq.1.and.i4.eq.1) then
        write(6,*) "NG"
      elseif (i1.eq.1.and.i2.eq.1.and.i3.eq.1.and.i4.ne.1) then
        write(6,*) "NG"
      elseif (i1.eq.1.and.i2.eq.1.and.i3.ne.1.and.i4.ne.1) then
        write(6,*) "NG"
      elseif (i1.eq.1.and.i2.ne.1.and.i3.ne.1.and.i4.ne.1) then
        write(6,*) "NG"
      elseif (i1.ne.1.and.i2.ne.1.and.i3.ne.1.and.i4.ne.1) then
        if (j(1).eq.1.and.j(2).eq.1.and.j(3).eq.1.and.j(4).eq.1) then
          write(6,*) "NG"
        elseif (j(1).eq.1.and.j(2).eq.1.and.j(3).eq.1.and.j(4).ne.1) then
          write(6,*) "NG"
        elseif (j(1).eq.1.and.j(2).eq.1.and.j(3).ne.1.and.j(4).ne.1) then
          write(6,*) "NG"
        elseif (j(1).eq.1.and.j(2).ne.1.and.j(3).ne.1.and.j(4).ne.1) then
          write(6,*) "NG"
        elseif (j(1).ne.1.and.j(2).ne.1.and.j(3).ne.1.and.j(4).ne.1) then
          m=m+1
        endif
      endif

      if (m/=1.or.n/=4) write(6,*) "NG"
    end

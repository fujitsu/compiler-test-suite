      i1=2;i2=2;i3=2;i4=2
      call sub(i1,i2,i3,i4)
     print *,'pass'
    end

    subroutine sub(i1,i2,i3,i4)
      if (i1.eq.1.and.i2.eq.1.and.i3.eq.1.and.i4.eq.1) then
        write(6,*) "NG"
      elseif (i1.eq.1.and.i2.eq.1.and.i3.eq.1.and.i4.ne.1) then
        write(6,*) "NG"
      elseif (i1.eq.1.and.i2.eq.1.and.i3.ne.1.and.i4.ne.1) then
        write(6,*) "NG"
      elseif (i1.eq.1.and.i2.ne.1.and.i3.ne.1.and.i4.ne.1) then
        write(6,*) "NG"
      elseif (i1.ne.1.and.i2.ne.1.and.i3.ne.1.and.i4.ne.1) then
        n=1
      endif
    end

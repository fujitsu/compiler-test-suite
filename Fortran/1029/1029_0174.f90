      interface 
        subroutine sub(i1,i2,i3,i4,j,n)
          integer::i1,i2,i3,i4,n
          integer,allocatable::j(:)
        end subroutine
      end interface

      integer,allocatable::j(:)
      n=4
      allocate(j(n))
      j=(/0,2,2,2/)
      i1=0;i2=2;i3=2;i4=2
      call sub(i1,i2,i3,i4,j,n)
     print *,'pass'
    end

    subroutine sub(i1,i2,i3,i4,j,n)
      integer,allocatable::j(:)

      if (i1.eq.1.or.i2.eq.1.or.i3.eq.1.or.i4.eq.1) then
        write(6,*) "NG"
      elseif (i1.eq.1.or.i2.eq.1.or.i3.eq.1.or.i4.lt.1) then
        write(6,*) "NG"
      elseif (i1.eq.1.or.i2.eq.1.or.i3.lt.1.or.i4.lt.1) then
        write(6,*) "NG"
      elseif (i1.eq.1.or.i2.lt.1.or.i3.lt.1.or.i4.lt.1) then
        write(6,*) "NG"
      elseif (i1.lt.1.or.i2.lt.1.or.i3.lt.1.or.i4.lt.1) then
        if (j(1).eq.1.or.j(2).eq.1.or.j(3).eq.1.or.j(4).eq.1) then
          write(6,*) "NG"
        elseif (j(1).eq.1.or.j(2).eq.1.or.j(3).eq.1.or.j(4).lt.1) then
          write(6,*) "NG"
        elseif (j(1).eq.1.or.j(2).eq.1.or.j(3).lt.1.or.j(4).lt.1) then
          write(6,*) "NG"
        elseif (j(1).eq.1.or.j(2).lt.1.or.j(3).lt.1.or.j(4).lt.1) then
          write(6,*) "NG"
        elseif (j(1).lt.1.or.j(2).lt.1.or.j(3).lt.1.or.j(4).lt.1) then
          n=n+1
        endif
      endif

      if (n/=5) write(6,*) "NG"
    end

      integer::i
      integer,parameter::n=10
      real(kind=8),dimension(1:n)::a,b,c
      data a,b,c/10*1.,10*2.,10*3./
      m=1
      do i=1, 10
        a(i) = a(i) * b(i)
      end do
      if (m.gt.0) then
      do i=1, 10
         b(i) = b(i) + c(i)
      end do
      endif
      write(6,99) a
      write(6,99) b
99    format(5f10.5)
      stop
      end

      integer,parameter::len=10
      real(kind=16),dimension(len)::q1,q2
      integer(kind=4)::i3
      data q2/len*10.0q0/
      i3 = 3
      q1 = q2 ** i3
      write(6,*) q1
      end

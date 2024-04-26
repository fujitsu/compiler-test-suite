      program main
      integer,parameter::n=10
      integer maxval
      real,dimension(n)::r
      real,dimension(n,n)::a
      r=0
      a=1.0
      r(1)=maxval(a)
      write(6,*) r
      end program

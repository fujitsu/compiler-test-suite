
      type tag
        integer*8   i8
        integer*4   i4
        integer*2   i2
        integer*1   i1
      end type
      type (tag) ::t
      integer,parameter ::j1=bit_size(t%i8)
      integer,parameter ::j2=bit_size(t%i4)
      integer,parameter ::j3=bit_size(t%i2)
      integer,parameter ::j4=bit_size(t%i1)
      
      if (j1 .ne. bit_size(t%i8) )  then
        print *,'??? ng ???'
        stop 1
      endif
      if (j2 .ne. bit_size(t%i4) )  then
        print *,'??? ng ???'
        stop 2
      endif
      if (j3 .ne. bit_size(t%i2) )  then
        print *,'??? ng ???'
        stop 3
      endif
      if (j4 .ne. bit_size(t%i1) )  then
        print *,'??? ng ???'
        stop 4
      endif
      print *,'*** ok ***'
      end

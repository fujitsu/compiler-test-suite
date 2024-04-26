      integer(kind=4) ::error=0_4
      error=ifun()
      if(error/=0) then
         write(6,*) '*** ng ***'
      else
         write(6,*) '*** ok ***'
      endif
      stop
      end

      integer function ifun() result(error)
      logical(kind=1)::mask=.TRUE._1
      integer(kind=4)::r4_a=0.1E+1
      integer(kind=4)::r4_b(1:1)
      error=0
      where((/mask/))
        r4_b=MERGE((/r4_a/),(-r4_a),.TRUE._4)
      endwhere
      if(r4_b(1)/=r4_a) error=1
      end

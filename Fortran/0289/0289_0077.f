      program main
        call come()
        call move()
      end

      subroutine come
        integer a,b,c,dummy
        pointer (aa,dummy)
        call sub(aa,a,100)
        aa=loc(a)

        b=a*2
        dummy = 0
        c=a*2
      
        print *,a,b,c
        if(a.eq.0.and.b.eq.200.and.c.eq.0) then
          print *,'*** ok come ***'
        else
          print *,'*** ng come ***'
        endif
      end

      subroutine move 
        integer a,b,dummy
        pointer (aa,dummy)

        call sub(aa,a,100)
        aa=loc(a)

        do i=1,10
          b=a*2
          dummy = 300
        enddo     

        print *,a,b
        if(a.eq.300.and.b.eq.600) then
          print *,'*** ok move ***'
        else
          print *,'*** ng move ***'
        endif
      end

      subroutine sub(aa,a,c)
        integer a,dummy,c
        pointer (aa,dummy)
        a=c
        return
      end

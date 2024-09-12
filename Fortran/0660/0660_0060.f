      program main
       i=0
      call sub1(i)
      call insub()
      if (i.ne.2) print *,'err 1 '
      print *,'pass'
      contains 
        subroutine insub()
        call sub1(i)
        end subroutine
      end

      subroutine sub1(i)
      pointer ip
      target  it
      save it
      ip=>it
      it=1 
      i=i+ip
      nullify(ip)
      end

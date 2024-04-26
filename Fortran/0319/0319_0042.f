      subroutine sub(i)
	namelist /nlist/ib,ic,id
      i=i+1
      end
      i=0
      call sub(i)
      print *,i
      end

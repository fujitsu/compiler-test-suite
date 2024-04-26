      common nv
      call nv_set
      do 20 i=2,20
        n1=i+1
        if (nv.gt.2) then
          n2=i+1
        else
          n1=i-1
        endif
        n = n1 + n2
        nv = n + 1
 20   continue
      print *,'======== ',n
      end
      subroutine nv_set
      common nv
      nv=3
      end

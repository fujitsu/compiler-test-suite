        INTEGER :: aaa,bbb,ccc
!$OMP THREADPRIVATE(aaa)
!$OMP THREADPRIVATE(bbb,ccc)
      print *,"pass"
      END 

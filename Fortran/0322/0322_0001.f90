        INTEGER :: aaa,bbb,ccc
!$OMP THREADPRIVATE(bbb,ccc)
!$OMP THREADPRIVATE(aaa)
      print *,"pass"
      END 


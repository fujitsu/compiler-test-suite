      subroutine ss21(a2)
      character*(1)::a2(1:,:)
      character*(1)::ba(ubound(a2//a2,dim=1))

      entry ent21
      ba(1)='1'
      if (ba(1)/='1')print *,'error'
      if (a2(1,1)/='1')print *,'error-2'
      end subroutine 

      interface
      subroutine ss21(a2)
      character*(1)::a2(1:,:)
      character*(1)::ba(ubound(a2//a2,dim=1))
      end subroutine 
      end interface
      character*(1)::a2(1,2)
      a2='1'
       call ss21(a2)
       print *,'pass'
     end

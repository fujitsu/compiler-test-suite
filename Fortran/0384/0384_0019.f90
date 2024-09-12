call sss(10,10)
print *,"pass"
       end
       subroutine sss(i,j)
      interface
       elemental subroutine sub(n1,n2)
       intent(in) n1,n2
       end subroutine
       end interface
       dimension m1(2),m2(2)
       dimension mm1(2,i),mm2(2,j)
       call sub(m1,m2)
       call sub(m1,2)
       call sub(mm1,mm2)
       end subroutine

       elemental subroutine sub(n1,n2)
       intent(in) n1,n2
       end subroutine

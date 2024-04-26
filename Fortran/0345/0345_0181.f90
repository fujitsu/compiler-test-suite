   module mod
   contains
    recursive subroutine sub22(i,j)
      call sub333(i,j)
      if (j> 10) return
      call sub22(i,j)
    end subroutine
   end module mod

    program main
    use mod
      j=0
      i=1
      call sub22(i,j)
      call sub22(i,j)
      if (j/=12) print *,'error j ->',j
     print *,'pass'
    endprogram

    subroutine sub333(i,j)
      j=j+i
    end subroutine

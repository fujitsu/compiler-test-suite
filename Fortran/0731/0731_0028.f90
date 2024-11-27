   character*(1),target:: t
   call sub(fff(1,t)//'b')
 print *,'pass'
   contains
     function fff(i,t) result(f)
     character*(i),pointer:: f
     character*(1),target:: t
     f=> t
     t='a'
   end function
   subroutine sub(c)
   character*(*) c
   if (c/='ab')write(6,*) "NG"
   if (len(c)/=2)write(6,*) "NG"
   end subroutine
  end

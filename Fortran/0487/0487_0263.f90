  pointer:: p
  allocatable:: a
  p=>NULL()
         call sub(p     )
         call sub(a     )
         call sub(NULL())
print *,'pass'
         contains
         subroutine sub(dptr)
         optional:: dptr
         if (present(dptr)) print *,101
         end subroutine
         end

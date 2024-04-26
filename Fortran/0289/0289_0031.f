      program main
      character*11 cpfun,cpchk
      character*3  ok/' ok'/
      call cpsub(cpchk,cpfun('abcdefg',ok))
      write(6,*) cpchk
      end
      function cpfun(tp,chk)
      character*(*) cpfun,tp,chk
      cpfun=tp//chk
      return
      end
      subroutine cpsub(chk,obj)
      character*(*) chk,obj
      character*11  cpfun
      if (cpfun('abcde','fg ok').ne.obj) then
       chk=obj(1:8)//'ng'
      else
       chk=obj
       end if
      return
      end

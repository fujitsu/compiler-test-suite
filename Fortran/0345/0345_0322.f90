    module mod
      integer::i=1,j=10,l(2)=0
     contains
     subroutine ini(n)
      if (n/=0) return
       i=100 
       j=1000
     end subroutine
     subroutine iniini(n)
      if (n==0) then
       i=100 
       j=1000
      endif
     end subroutine
    end module

    program main
     use mod
      call ini(1)
      call sub(i,j,l)
      call ini(2)
      call sub(i,j,l)
      if (any(l/=(/33,44/))) print *,'error'
      print *,'pass'
    end

    subroutine sub(n,m,k)
     use mod
     integer::k(2)
      call iniini(n)
      call subsub(n,m,k)
    end subroutine

    subroutine subsub(n,m,l)
     integer::l(2)
      l(1)=l(2)+n+m
      l(2)=l(1)+n+m
    end subroutine

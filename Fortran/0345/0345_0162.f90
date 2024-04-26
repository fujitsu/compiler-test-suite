    module mod
      integer::j,k,a(10),b(10)
     contains
      subroutine sub(i)
        j=i-11 
        k=j*i
        a(i)=j*(-1)
        b(i)=k*(-1)
      end subroutine
      subroutine subsub()
        if (any(a/=(/10,9,8,7,6,5,4,3,2,1/))) print *,'error1 a->',a
        if (any(b/=(/10,18,24,28,30,30,28,24,18,10/))) print *,'error2 b->',b
      end subroutine
    end module

    program main
     use mod
      do i=1,10
        call sub(i)
      enddo
      call subsub()
      print *,'pass'
    end program

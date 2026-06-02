      call aaaaa
      print *,'pass'
      end
      subroutine aaaaa
      logical  l4(2,3)
      data l4 /6* .true./
      call sub1(all(l4))
      contains
      subroutine sub1(x)
      logical*4 x
      if(x.neqv.
     1 all((/.true.,.true.,.true.,.true.,.true.,.true./)))
     1    print *,'fail'
      call sub2(x)
      end subroutine
      subroutine sub2(y)
      logical *4 y
      logical  l4(2,3)
       do j=1,3
         do i=1,2
           l4(i,j) = .true.
         end do
       end do
       if(y.neqv.all(l4)) print *,'fail'
       end subroutine
       end

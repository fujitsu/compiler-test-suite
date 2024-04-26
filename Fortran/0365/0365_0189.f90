      subroutine test1(a,n)
      common/com/s
      dimension a(n)
      a=a+1
      s=sum(a)
      end 
      subroutine test2(a,n)
      common/com/s
      dimension a(n)
      do i=1,n
        a(i)=a(i)+1
        s=s+a(i)
      end do
      end 
      program main
      dimension a(1000)
      common /com/s
      s=0
      a = 3
      call test1(a,1000)
      print *,s
      call test2(a,1000)
      print *,s
      end

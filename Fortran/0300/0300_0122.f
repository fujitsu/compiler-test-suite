      program main
      type sss
        integer x
        integer y
      end type
      type(sss) a(10),b(10)
      call init(a,b)
      do i=1,10
         b(2)=a(i)
      enddo
      call output(b)
      end

      subroutine init(a,b)
      type sss
        integer x
        integer y
      end type
      type(sss) a(10),b(10)
      do i=1,10
         a(i)%x=i
         a(i)%y=i+10
         b(i)%x=0
         b(i)%y=0
      enddo
      end

      subroutine output(b)
      type sss
        integer x
        integer y
      end type
      type(sss) b(10)
      print *,b
      end

      program main
      type sss
        integer x
        integer y
      end type
      type(sss) a(10),b(10)
      call init(a,b)
      do i=1,10
         a(i)=b(2)
      enddo
      call output(a,b)
      end

      subroutine init(a,b)
      type sss
        integer x
        integer y
      end type
      type(sss) a(10),b(10)
      do i=1,10
         a(i)%x = 0
         a(i)%y = 0
         b(i)%x = i*10
         b(i)%y = i*20
      enddo
      end

      subroutine output(a,b)
      type sss
        integer x
        integer y
      end type
      type(sss) a(10),b(10)
      print *,a
      print *,b
      end

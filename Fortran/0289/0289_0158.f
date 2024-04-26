
      program main

      write(6,*) '###### test-start ######'
      call test01
      call test02
      call test03
      call test04
      write(6,*) '###### test-end   ######'

      stop
      end


      subroutine test01
      real                  a(10), b(10), c(10)
      real,allocatable :: w_a(:),w_b(:),w_c(:)

      pointer (pa ,a) ,(pb ,b) ,(pc ,c)


      allocate (w_b(10),w_c(10))
      pb = loc(w_b(1))
      pc = loc(w_c(1))
      b  = 1
      c  = 2

      allocate (w_a(10))
      pa = loc(w_a(1))

        a=b+c
        a=a+b

        do 100 i=1,10
          if (a(i) .ne. 4.0) then
            write (6,999)
            goto 200
          end if
  100 continue
        write (6,998)
  998 format(1h ,'****** test01 ok ******')
  999 format(1h ,'?????? test01 ng ??????')
  200 continue
      deallocate (w_a ,w_b ,w_c)
      return
      end


      subroutine test02
      real     a(10),  b(10),  c(10)
      real   w_a(10),w_b(10),w_c(10)
      pointer (pa ,a) ,(pb ,b) ,(pc ,c)
      integer             ::   i
      integer,allocatable :: w_i(:)
      pointer (pi ,i)

      data x,w_a,w_b,w_c/0.0,10*1.0,10*2.0,10*3.0/

      pa = loc (w_a(1))
      pb = loc (w_b(1))
      pc = loc (w_c(1))

      allocate (w_i(1))
      pi = loc (w_i(1))

      i=10
 10   x=x+1.0
      a(1:i)=b(1:i)
      if (x .gt. 1.0) then
      c(1:i)=a(1:i)
      endif

      i=1
 777  if (c(i) .ne. 3.0) then
          write(6,999)
          goto 200
        end if
        i = i + 1
        if ( i <= 10 ) goto 777
      write(6,998)
200   continue
998   format(1h ,'****** test02 ok ******')
999   format(1h ,'?????? test02 ng ??????')
      deallocate (w_i)
      return
      end


      subroutine test03
      real                a(10),b(10),c(10,10),d(10,10)
      real,allocatable :: w_c(:,:),w_d(:,:)
      pointer (pc ,c) ,(pd ,d)

      data b/10*0.0/

      allocate (w_d(10,10))
      pd = loc (w_d(1,1))
      w_d=1.0

      allocate (w_c(10,10))
      pc = loc (w_c(1,1))

      a=b
      c=d

      do 100 i=1,10
        if(a(i) .ne. 0.0) then
          write(6,999)
          goto 200
        end if
        do 100 j=1,10
          if(c(i,j) .ne. 1.0) then
            write(6,999)
            goto 200
          end if
 100  continue
      write(6,998)
 200  continue
 998  format(1h ,'****** test03 ok ******')
 999  format(1h ,'?????? test03 ng ??????')
      deallocate (w_c ,w_d)
      return
      end


      subroutine test04
      real,dimension(10)            ::a1,a2,c,d
      real,allocatable,dimension(:) ::w_a1, w_c
      real,dimension(10)            ::w_a2, w_d
      pointer (pa1 ,a1),(pc ,c),(pa2 ,a2),(pd ,d)


      allocate (w_a1(10),w_c(10))
      pa1 = loc (w_a1(1))
      pc  = loc (w_c(1))
      pa2 = loc (w_a2(1))
      pd  = loc (w_d(1))

      a1 = 1.0
      a2 = 1.0
      c  = 1.0
      d  = 1.0

        a1=a1+2.0
        a1=a1+3.0

        a2=1.0
        a2=a2+2.0
        a2=a2+3.0

        c=c+d

        do 100 i=1,10
          if(a1(i) .ne. 6.0) then
            write(6,999)
            goto 200
          end if
          if(a2(i) .ne. 6.0) then
            write(6,999)
            goto 200
          end if
          if(c(i) .ne. 2.0) then
            write(6,999)
            goto 200
          end if
 100  continue
        write(6,998)
 200  continue
 998    format(1h ,'****** test04 ok ******')
 999    format(1h ,'?????? test04 ng ??????')
        deallocate (w_a1 ,w_c)
        return
      end

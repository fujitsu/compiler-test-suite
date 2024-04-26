      program main

      write(6,*) '###### test-start ######'
      call test01
      call test02
      call test03
      call test04
      call test05
      call test06
      call test07
      write(6,*) '###### test-end   ######'

      stop
      end


      subroutine test01
      real a(10),b(10)
      real,dimension(10) :: w_a,w_b
      real a1(10),b1(10)
      real,allocatable,dimension(:) :: w_a1,w_b1
      pointer (pa ,a),(pb ,b),(pa1 ,a1),(pb1 ,b1)
      data w_a/-4.0,-3.0,-2.0,-1.0,0.0,1.0,2.0,3.0,4.0,5.0/
      data w_b/-4.0,-3.0,-2.0,-1.0,0.0,1.0,2.0,3.0,4.0,5.0/

      pa = loc (w_a(1))
      pb = loc (w_b(1))


      allocate (w_a1(10),w_b1(10))
      w_a1(1:6:5)  = 1.0
      w_a1(2:7:5)  = 2.0
      w_a1(3:8:5)  = 3.0
      w_a1(4:9:5)  = 4.0
      w_a1(5:10:5) = 5.0
      pa1 = loc (w_a1(1))
      pb1 = loc (w_b1(1))
      b1(1:6:5)    =-4.0
      b1(2:7:5)    =-3.0
      b1(3:8:5)    =-2.0
      b1(4:9:5)    =-1.0
      b1(5:10:5)   =-0.0

      a(1:5:1)=a(6:10:1)
      b(6:10:1)=b(1:5:1)

      do 10 i=1,10
        if (a(i) .ne. a1(i)) then
          write(6,999) 'a',a
        end if
        if (b(i) .ne. b1(i)) then
          write(6,999) 'b',b
        end if
        if (a(i) .ne. a1(i) .or. b(i) .ne. b1(i)) then
          goto 100
        end if
  10  continue
      write(6,*) '*** test01 is ok ***'
 100  continue
 999  format(1h ,'*** test01 is ng ***',1h ,a1,'(',10(1h ,f4.1),')')
      deallocate (w_a1 ,w_b1)
      return
      end


      subroutine test02
      real,dimension(10) :: a,b
      real,dimension(10) :: w_a ,w_b
      pointer (pa ,a),(pb ,b)
      real a1(10),b1(10)
      real,dimension(10) :: w_a1 ,w_b1
      pointer (pa1 ,a1),(pb1 ,b1)
      data w_a/-4.0,-3.0,-2.0,-1.0,0.0,1.0,2.0,3.0,4.0,5.0/
      data w_b/-4.0,-3.0,-2.0,-1.0,0.0,1.0,2.0,3.0,4.0,5.0/
      data w_a1/1.0,2.0,3.0,4.0,5.0,1.0,2.0,3.0,4.0,5.0/
      data w_b1/-4.0,-3.0,-2.0,-1.0,0.0,-4.0,-3.0,-2.0,-1.0,0.0/

      pa = loc (w_a(1))
      pb = loc (w_b(1))
      a(5:1:-1)=a(10:6:-1)
      b(10:6:-1)=b(5:1:-1)

      pa1 = loc (w_a1(1))
      pb1 = loc (w_b1(1))
      do 10 i=1,10
        if (a(i) .ne. a1(i)) then
          write(6,999) 'a',a
          goto 20
        end if
  10  continue
  20  continue
      do 30 i=1,10
        if (b(i) .ne. b1(i)) then
          write(6,999) 'b',b
          goto 40
        end if
  30  continue
  40  continue
      do 50 i=1,10
        if (a(i) .ne. a1(i) .or. b(i) .ne. b1(i)) then
          goto 100
        end if
  50  continue
      write(6,*) '*** test02 is ok ***'
 100  continue
 999  format(1h ,'*** test02 is ng ***',1h ,
     1                       /,1h ,a1,'(',10(1h ,f5.2),')')
      return
      end


      subroutine test03
      real a(10),b(10),a1(10),b1(10)
      real,allocatable,dimension(:)::w_a1,w_b
      real,dimension(10)::w_a
      pointer (pa1 ,a1),(pa ,a),(pb ,b)
      data w_a/-4.0,-3.0,-2.0,-1.0,0.0,1.0,2.0,3.0,4.0,5.0/
      data b1/-4.0,-3.0,-2.0,-1.0,0.0,0.0,-1.0,-2.0,-3.0,-4.0/

      pa = loc (w_a(1))
      allocate (w_b(10))
      pb = loc (w_b(1))
      do i=1,10
         b(i) = i - 5
      end do

      allocate (w_a1(10))
      pa1 = loc (w_a1(1))
      a1(1)  = 5.0
      a1(2)  = 4.0
      a1(3)  = 3.0
      a1(4)  = 2.0
      a1(5)  = 1.0
      a1(6)  = 1.0
      a1(7)  = 2.0
      a1(8)  = 3.0
      a1(9)  = 4.0
      a1(10) = 5.0

      pa = loc (a(1))

      a(5:1:-1)=a(6:10:1)
      b(10:6:-1)=b(1:5:1)

      do 10 i=1,10
        if (a(i) .ne. a1(i)) then
          write(6,999) 'a',a
          goto 40
        end if
  10  continue
  40  continue
      do 20 i=1,10
        if (b(i) .ne. b1(i)) then
          write(6,999) 'b',b
          goto 50
        end if
  20  continue
  50  continue
      do 30 i=1,10
        if (a(i) .ne. a1(i) .or. b(i) .ne. b1(i)) then
          goto 60
        end if
  30  continue
      write(6,998)
  60  continue
 998  format(1h ,'*** test03 is ok ***')
 999  format(1h ,'*** test03 is ng ***',1h ,
     1                       /,1h ,a1,'(',10(1h ,f5.2),')')
      deallocate (w_a1 ,w_b)
      return
      end


      subroutine test04
      real a(10),b(10),a1(10),b1(10)
      real,dimension(10)::w_a
      real,allocatable,dimension(:)::w_b
      pointer (pa ,a),(pb ,b)
      data a1/5.0,4.0,3.0,2.0,1.0,1.0,2.0,3.0,4.0,5.0/
      data b1/-4.0,-3.0,-2.0,-1.0,0.0,0.0,-1.0,-2.0,-3.0,-4.0/


      pa = loc (w_a(1))
      allocate (w_b(10))
      pb = loc (w_b(1))
      do i=1,10
         a(i) = i - 5
         b(i) = i - 5
      end do

      a(1:5:1)=a(10:6:-1)
      b(6:10:1)=b(5:1:-1)

      do 10 i=1,10
        if( a(i) .ne. a1(i)) then
          write (6,999) 'a',a
          goto 40
        end if
  10  continue
  40  continue
      do 20 i=1,10
        if( b(i) .ne. b1(i)) then
          write (6,999) 'b',b
          goto 50
        end if
  20  continue
  50  continue
      do 30 i=1,10
        if( a(i) .ne. a1(i) .or. b(i) .ne. b1(i)) then
          goto 60
        end if
  30  continue
      write(6,998)
  60  continue
 998  format(1h '*** test04 is ok ***')
 999  format(1h '*** test04 is ng ***',1h ,
     1                          /,1h ,a1,'(',10(1h ,f5.2),')')
      deallocate (w_b)
      return
      end


      subroutine test05
      real a(10),a1(10)
      data a/-4.0,-3.0,-2.0,-1.0,0.0,1.0,2.0,3.0,4.0,5.0/
      data a1/-4.0,-3.0,-2.0,-1.0,-4.0,-3.0,-2.0,-1.0,0.0,5.0/
      integer :: i
      integer,allocatable,dimension(:)::w_i
      pointer (pi ,i)


      allocate (w_i(1))
      pi = loc (w_i(1))
      i = 1

      a(5:9:i)=a(1:5:i)

      do 10 j=1,10
        if(a(j) .ne. a1(j)) then
          write (6,999)
          goto 20
        end if
  10  continue
      write (6,998)
  20  continue
 998  format(1h ,'*** test05 is ok ***')
 999  format(1h ,'*** test05 is ng ***',1h ,
     1                     /,1h ,a1,'(',10(1h ,f5.2),')')
      deallocate (w_i)
      return
      end


      subroutine test06
      real a(10),b(10),c(10),a1(10)
      real,dimension(10)::w_a ,w_b
      pointer (pa ,a) ,(pb ,b)
      data w_a/-4.0,-3.0,-2.0,-1.0,0.0,1.0,2.0,3.0,4.0,5.0/
      data a1/-4.0,-3.0,-2.0,-1.0,5.0,1.0,2.0,3.0,4.0,0.0/

      pa = loc (w_a(1))
      pb = loc (w_b(1))

      c    =a(5)
      a(10)=0.0
      a( 5)=5.0
      b    =c

      do 10 i=1,10
        if (a(i) .ne. a1(i)) then
          write (6,999) 'a',a
          goto 20
        end if
  10  continue
  20  continue
      do 30 i=1,10
        if(b(i) .ne. 0.0) then
          write (6,999) 'b',b
          goto 40
        end if
  30  continue
      do 50 i=1,10
        if (a(i) .ne. a1(i) .or. b(i) .ne. 0.0) then
          goto 40
        end if
  50  continue
      write(6,998)
  40  continue
 998  format(1h ,'*** test06 is ok ***')
 999  format(1h ,'*** test06 is ng ***',1h ,
     1                   /,a1,'(',10(1h ,f5.2),')')
      return
      end


      subroutine test07
      real a(10),b(5),c(5),b1(5),c1(5)
      real,dimension(10)::w_a
      pointer (pa ,a)

      data w_a/-4.0,-3.0,-2.0,-1.0,0.0,1.0,2.0,3.0,4.0,5.0/
      data c1/-4.0,-3.0,-2.0,-1.0,0.0/
      data b1/1.0,2.0,3.0,4.0,0.0/

      pa = loc (w_a(1))

      c(1:5:1)=a(1:5:1)
      a(10)=0.0
      b(1:5:1)=a(6:10:1)

      do 10 i=1,5
        if (b(i) .ne. b1(i)) then
          write (6,999) 'b',b
          goto 20
        end if
  10  continue
  20  continue
      do 30 i=1,5
        if (c(i) .ne. c1(i)) then
          write (6,999) 'c',c
          goto 40
        end if
  30  continue
      do 50 i=1,5
        if (b(i) .ne. b1(i) .or. c(i) .ne. c1(i)) then
          goto 40
        end if
  50  continue
      write(6,998)
  40  continue
 998  format(1h ,'*** test07 is ok ***')
 999  format(1h ,'*** test07 is ng ***',1h ,
     1                          /,1h ,a1,'(',10(1h ,f5.2),1h ,')')
      return
      end

      program main
      structure /str1/
        character *1  ca(3,3)/'a','b','c',
     \                        'd','e','f',
     \                        'g','h','i'/
        character *1  cb(3,3)/'z','y','x',
     \                        'w','v','u',
     \                        't','s','r'/
      end structure
      
      structure /str2/
        character *9  zca/'abcdefghi'/
        character *9  zcb/'rstuvwxyz'/
      end structure

      structure /str2_a/
        character *9 z1
        character *9 z2
      end structure
      record /str1/ x
      record /str2/ y

      character *1  z(18),pc
      integer       cnt/0/,err/0/
      pointer (p ,pc)

      call sub(x ,z)
      x.ca(:,1) = z(1:3)
      x.ca(:,2) = z(4:6)
      x.ca(:,3) = z(7:9)
      cnt = 10
      do i=1,3
         x.cb(:,i) = z(cnt:cnt+2)
         cnt = cnt + 3
      end do
      p = loc(y.zca)
      do l=1,3
         do i=1,3
            if (pc .ne. x.ca(i,l))err=1
            p = p + 1
         end do
      end do
      p = loc(y.zcb)
      do l=1,3
         do i=1,3
            if (pc .ne. x.cb(i,l))err=1
            p = p + 1
         end do
      end do
      if (err .eq. 0)then
         write(6,*)'*** ok ***'
      else 
         write(6,*)'*** ng ***'
      endif
      stop
      end

      subroutine sub(a,c)
      structure /str1/
        character *1 ca(3,3)
        character *1 cb(3,3)
      end structure
      record /str1/ a
      character *2 z(3,3)
      character *1 w,c(18)
      integer*4  cnt/1/

      z = a.ca//a.cb

      do j=1,3
         do i=1,3
            do k=1,2
               w = z(i,j)(k:k)
               c(cnt) = w
               cnt = cnt + 1
            end do
         end do
      end do

      call sub1(c)
      call sub2(c)
      return
      end

      subroutine sub1(c)
      character*1   c(18),pc,wk(18),a
      pointer (p,pc)

      p = loc(wk(1))

      wk(1:9) = c(1:18:2)
      wk(10:18) = c(18:2:-2)
      do i=1,3
         a = pc
         wk(1:17) = wk(2:18)
         wk(18) = a
      end do
      c = wk
      wk(1:18:2) = c(2:18:2)
      wk(2:18:2) = c(1:17:2)
      c = wk
      return
      end

      subroutine sub2(c)
      character *1 c(18),pc,min
      pointer (p,pc)

      do l=1,17
         min = c(l)
         do i=l+1,18
            p = loc(c(i))
            if (min .gt. c(i)) then
               min = pc
               c(l+1:i) = c(l:i-1)
               c(l) = min
            endif
         end do
      end do
      return
      end


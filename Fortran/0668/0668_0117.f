      program main
      parameter (r4eps=1.0e-4,r8eps=1.0d-12)
      real*4   r4a1(10),r4b1(10),r4c1(10),r4d1(10),r4e1(10),
     +         r4h1(10)
      integer  r4f1
      data     r4a1/6.0,7.0,8.0,9.0,9.0,9.0,2.0,2.0,2.0,10.0/
      data     r4b1/1.0,2.0,3.0,4.0,5.0,6.0,7.0,8.0,9.0,10.0/
      data     r4c1/1.1,2.2,3.3,4.4,5.5,6.6,7.7,8.8,9.9,10.0/
      data     r4d1/5.0,5.0,5.0,5.0,5.0,5.0,5.0,5.0,5.0,5.0/
      data     r4e1/10.0,9.0,8.0,7.0,6.0,5.0,4.0,3.0,2.0,1.0/
      data     r4f1/0/
      data     r4h1/5.0,5.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0/
      real*4   r4a2(10),r4b2(10),r4c2(10),r4d2(10),r4e2(10),
     +         r4g2(10),r4h2,r4i2
      integer  i4f2
      data     r4a2/1.0,2.0,3.0,4.0,5.0,6.0,7.0,8.0,9.0,10.0/
      data     r4b2/1.0,2.0,3.0,4.0,5.0,6.0,7.0,8.0,9.0,10.0/
      data     r4c2/0.1,0.2,0.3,0.4,0.0,0.0,0.0,0.0,0.0,0.0/
      data     r4d2/1.0,2.0,3.0,4.0,5.0,6.0,7.0,8.0,9.0,10.0/
      data     r4e2/10.0,9.0,8.0,7.0,6.0,5.0,4.0,3.0,2.0,1.0/
      data     i4f2/10/
      data     r4g2/20,15,4,3,9,7,11,18,6,4/
      data     r4h2/8.0/
      data     r4i2/0.0/
      real*8   r8a(10),r8b(10),r8c(10),r8d(10),r8e(10),r8g,r8h,r8i
      integer  r8f
      data     r8a/1.0,2.0,3.0,4.0,5.0,6.0,7.0,8.0,9.0,10.0/
      data     r8b/1.0,2.0,3.0,4.0,5.0,6.0,7.0,8.0,9.0,10.0/
      data     r8c/0.1,0.2,0.3,0.4,0.5,0.6,0.7,0.8,0.9,1.0/
      data     r8d/1.0,2.0,3.0,4.0,5.0,6.0,7.0,8.0,9.0,10.0/
      data     r8e/10.0,9.0,8.0,7.0,6.0,5.0,4.0,3.0,2.0,1.0/
      data     r8f/0/
      data     r8g/55.5/
      data     r8h/9.0/
      data     r8i/0.0/

      do 10 i=1,10
        if (r4a1(i) .ge. 5.0) then
          r4a1(i) = r4a1(i) * r4b1(i)
          if (r4c1(i) .gt. r4b1(i)) then
            r4e1(i) = r4e1(i) + r4d1(i)
            r4e1(i) = r4e1(i) - 1
            r4d1(i) = r4c1(i)
          endif
        endif
   10 continue
      r4f1 = 10
      do 20 i=1,r4f1
        if (r4h1(i) .lt. r4d1(i)) then
          r4h1(i) = r4c1(i)
        endif
   20 continue

      write(6,*) ' ##   no.1 ##'
      write(6,*) ' r4a1 '
      write(6,100) r4a1
  100 format (10f7.2)
      write(6,*) ' r4e1 '
      write(6,200) r4e1
  200 format (10f7.2)
      write(6,*) ' r4d1 '
      write(6,300) r4d1
  300 format (10f7.2)
      write(6,*) ' r4h1 '
      write(6,400) r4h1
  400 format (10f7.2)

      i4f2 = 10
      do 50 j=1,10
        if (r4a2(j) .ge. 5.0) then
          r4a2(j) = r4a2(j) * r4b2(j)
          r4c2(j) = r4a2(j) / (r4a2(j) /10)
          if (abs(r4c2(j) - r4b2(j)).lt.r4eps) then
            r4e2(j) = r4e2(j) + r4d2(j)
            r4e2(j) = r4e2(j) - 1
            r4d2(j) = r4c2(j)
            if (r4h2 .lt. r4c2(j)) then
              r4h2 = r4c2(j)
            endif
          endif
        endif
   50 continue
      do 60 j=1,10
        if (r4g2(j) .gt. 10.0) then
          r4i2 = r4i2 + r4g2(j)
        endif
   60 continue
      write(6,*) ' ##   no.2 ##'
      write(6,*) ' r4c2 '
      write(6,110) r4c2
  110 format (10f7.2)
      write(6,*) ' r4e2 '
      write(6,210) r4e2
  210 format (10f7.2)

      do 70 i=1,10
        if (r8a(i) .lt. 8.0) then
          r8a(i) = r8a(i) * r8b(i)
          r8c(i) = r8a(i) / (r8a(i) / 10)
          if (abs(r8c(i) - r8b(i)).lt.r8eps) then
            r8e(i) = r8e(i) + r8d(i)
            r8e(i) = r8e(i) - 1
            r8d(i) = r8c(i)
          endif
        endif
   70 continue
      r8f = 10
      do 80 j=1,r8f
        if (r8h .lt. r8c(j)) then
          r8h = r8c(j)
        endif
   80 continue
      do 90 j=1,r8f
        if (r8g .lt. r8c(j)) then
          r8g = r8c(j)
        endif
        r8i = r8i + r8c(j)
   90 continue

      write(6,*) ' ##   no.3 ##'
      write(6,*) ' r8c '
      write(6,120) r8c
  120 format (10f7.2)
      write(6,*) ' r8e '
      write(6,220) r8e
  220 format (10f7.2)
      stop
      end

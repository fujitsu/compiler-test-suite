      
      integer i, j, k, ans
      parameter (ans=301)
      integer a(1:100), b(1:100)

      i = 1
      j = 0
      k = 2
      a = j
      id = i+j
      do j = 1, 100
         s = i+k
         b(j) = s
         a(i+k) = id
      enddo

      if (sum(a+b).eq.ans) then
         print *,"OK"
      else
         print *,"NG"
         print *, sum(a+b)
      endif
      end

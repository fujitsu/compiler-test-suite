      integer N
      parameter (N=50)
      real var(N)
      real p, q, r, s
      character*8 name1, name2, name3

      name1 = 'February'
      name2 = 'November'

      var = 0.9

      if ( name1 == name2) then 
         p = 0.1
      else
         p = 1.1
      endif

      if (name1 > name2) then
         p = p - 0.5
      else
         p = 1.1
      endif

      do 10 i = 1, N/2-3
 10      var(i) = p - var(i)*(p*var(i+1)-p*var(i+2)+p*var(i+3))

      q = p - var(N/2)
      r = p - var(N/2-1)
      s = p - var(N/2-2)

      do 20 i = 1, N
 20      var(1) = var(1) + q

      do 21 i = 1, N
 21      var(2) = var(2) + r

      do 22 i = 1, N
 22      var(3) = var(3) + s

      do 24 i = 1, N
         var(1) = var(1) - r
         var(2) = var(2) - s
 24      var(3) = var(3) - q

      do 30 i = 1, N/2
 30      var(N/2+i) = var(i) + (p-r+s)

      sum = 0.0
      do 40 i = 1, N
         if (i <= N/2) then
            sum = sum + var(i)
         else
            sum = sum - var(i)
         endif
         if (sum > 10.0) then
            name3 = name1
         else
            name3 = name2
         endif
 40      continue

      if (name3 > name1) then
         write(*,*) sum, name3
      else
         if (name2 > name1) then
            write(*,*) sum, name2
         else
            write(*,*) sum, name1
         endif
      endif

      end

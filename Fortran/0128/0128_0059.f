      integer N, NW
      parameter (N=25)
      parameter (NW=50)
      real, dimension(N) :: var
      real, dimension(NW) :: array
      real p, q, r, s
      pointer (ptr, var)
      character*8 name1, name2, name3
      real,parameter :: ans=0.000000000e+00
      real,parameter :: error=0.55_4
      name1 = 'kanzanji'
      name2 = 'gansuiji'

      ptr = loc(array)

      var = 0.9

      if ( name1 == name2) then 
         p = 0.1
      else
         p = 1.1
      endif

      if (name1 > name2) then
         p = p - 0.5
      else
         p = 0.9
      endif

      do 10 i = 4, N
 10      var(i) = p - (var(i-1)-var(i-2)+var(i-3))

      q = p - var(N)/100.0
      r = p - var(N-1)/100.0
      s = p - var(N-2)/100.0

      do 20 i = 1, N
         var(1) = var(1) + q
         var(2) = var(2) + r
 20      var(3) = var(3) + s

      do 30 i = 1, N
         name3 = name1
         name2 = name1
 30      array(N+i) = var(i)

      sum = 0.0
      do 40 i = 1, NW
         if (i <= N) then
            sum = sum + array(i)
         else
            sum = sum - array(i)
         endif
 40      continue

      if (name3 > name1) then
         print *,"NG",sum, name3
      else
         if (name2 > name1) then
            print *,"NG",sum, name2
         else
            if (abs(sum-ans)<=error) then
               print *,"OK"
            else
               print *,"NG",sum, name1
            endif
         endif
      endif

      end

      integer N, NW
      parameter (N=25)
      parameter (NW=50)
      real, dimension(N) :: var
      real, dimension(NW) :: array
      real p, q, r, s
      pointer (ptr, var)
      character*8 name1, name2, name3

      name1 = 'February'
      name2 = 'November'

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

      q = p - var(N)
      r = p - var(N-1)
      s = p - var(N-2)

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
         write(*,*) sum, name3
      else
         if (name2 > name1) then
            write(*,*) sum, name2
         else
            write(*,*) sum, name1
         endif
      endif

      end

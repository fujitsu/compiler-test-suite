
      integer N, NW
      parameter (N=25)
      parameter (NW=50)
      real(kind=8), dimension(N) :: var
      real(kind=8), dimension(NW) :: array
      real(kind=8) p, q, r, s, kai
      pointer (ptr, var)
      character*8 name1, name2, name3
      character*8 ans_name
      parameter (ans_name="kkkkkkkk")
      parameter (kai=0.0_8)
      real(kind=8),parameter :: error=0.1875_8
      real(kind=8) kei

      name1 = "kkkkkkkk"
      name2 = "gggggggg"

      ptr = loc(array)

      var = 0.9

      if (LGE(name1,name2) .and. (.not. LGT(name1,name2))) then 
         p = 0.1
      else
         p = 1.1
      endif

      if (LGT(name1,name2)) then
         p = p - 0.5
      else
         p = 0.9
      endif

      do 10 i = 4,N
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
 30      name2 = name1

      array(N+1:NW) = var (1:N)

      kei = real(0)
      do 40 i = 1, NW
         if (i <= N) then
            kei = kei + array(i)
         else
            kei = kei - array(i)
         endif
 40      continue

      if ((LGE(name2,ans_name) .and. (.not. LGT(name2,ans_name))) .and.
     +(LGE(name3,ans_name) .and. (.not. LGT(name3,ans_name))) .and.
     +(kei - kai)<=error) then
         write(*,*) 'OK'
      else
         write(*,*) 'NG',name2,name3,kei
      endif

      end

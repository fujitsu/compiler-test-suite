
      integer*4 N, LIMIT
      parameter (N=10)
      parameter (LIMIT=100)
      integer*4,dimension(N) :: a1,a2
      integer*4,dimension(N,N) :: u1,u2
      integer*4,dimension(N) :: s1,s2
      logical*1,dimension(N,N) :: m1
      logical*1,dimension(N) :: m2
      integer*4,dimension(N) :: kei
      integer*4 kkkkk, ans
      parameter (ans=83)
      
      m1 = .true.
      do i=1,N
         a1(i) = i
         a2(i) = N-i+1
         if (mod(i,2) .ne. 0) then
            m1(i,i) = .false.
            m2(i) = .false.
         else
            m1(i,i) = .true.
            m2(i) = .true.
         endif
         s1(i) = modulo(i,N/2)
         s2(i) = modulo(i,N/3)
         do j=1,N
            if (mod(j,3) .ne. 0) then
               m1(i,j) = .false.
            else
               m1(i,j) = .true.
            endif
         enddo
      enddo

      u1 = spread(a1,1,N)
      u2 = spread(a2,2,N)

      do i=1,N
         do j=1,N
            if (i*j < 30) then
               u1(j,j) = i*j
               u1(i,j) = i+j
            endif
         enddo
         if ((abs(i-j) .eq. 6) .and. j<=N) then
            u1(j,j) = i*j
         endif
      enddo

      do i=1,N/2
         u1 = cshift(u1,s1,1)
         u2 = cshift(u2,s2,2)
      enddo

      where (u1 > u2)
         u1 = u1 - u2
      elsewhere
         u2 = u2 - u1
      endwhere

      where (m2)
         kei = sum(u1,1,m1)
         kei = kei + sum(u2,2,m1)
         m2 = .false.
      elsewhere
         kei = sum(u1,2,m1)
         kei = kei + sum(u2,1,m1)
         m2 = .true.
      endwhere

      where (m2)
         kei = kei + product(u1,1,m1)
         kei=kei-(maxval(u1,1,u1 .lt. 100)+maxval(u2,2,u2 .lt. 100))
         kei = kei - (minval(u1,1)+minval(u2,2))
      elsewhere
         kei = kei + product(u2,2,m1)
         kei=kei-(maxval(u1,2,u1 .lt. 100)+maxval(u2,1,u2 .lt. 100))
         kei = kei - (minval(u1,2)+minval(u2,1))
      endwhere

      where (kei > LIMIT)
         kei = LIMIT
         m2 = .false.
      elsewhere
         m2 = .true.
      endwhere

      kkkkk = sum(kei,1,m2)

      if (kkkkk .eq. ans) then
         print *,"OK"
      else
         print *,"NG"
      endif

      end


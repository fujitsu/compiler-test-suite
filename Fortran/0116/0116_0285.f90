
      program main
        parameter(iaa=240,ibb=30,icc=240)
      common /base2/  nc, jmax1, kmax1, lmax1, jj, kj, lj
      common /vars2/    pp(0:iaa,0:ibb,0:icc)

      dimension  G(4,iaa), Gv1(4,iaa), Gv2(4,iaa)
      dimension  cc(iaa)
      integer(4) ::  ln,jn,kn
      real(8) :: result
      real(8) :: answer
      parameter(answer=190.0)
      G=0
      Gv1=0
      Gv2=0
      ln = 10
      jn = 10
      kn = 10
      lmax1 = ln
      jmax1 = jn
      kmax1= kn

        
      do 26 l = 1, lmax1
      do 260 j = 1, jmax1
        do 211 k = 1, kmax1-1
          kl = k
          kr = k + 1
          cc(k) = 1
  211   continue
        
        do 220 k = 1, kmax1-1
          cc2 = cc(k)**2
          
          G(1,k)   = 1
          G(2,k)   = 2
          G(3,k)   = 3
          G(4,k)   = 4

  220   continue
        
        do 2221 k = 1, 3
            do 2221 n = 1, 4
              Gv1(n,k) = G(n,k)
              Gv2(n,k) = G(n,k)
 2221   continue
        
        do 2222 k = kmax1-1, kmax1-1
            do 2222 n = 1, 4
              Gv1(n,k) = G(n,k)
              Gv2(n,k) = G(n,k)
 2222   continue

  260 continue
  26  continue
      result = sum(G) + sum(Gv2)
      result = result + sum(Gv1)
      result = result +kl+kr+cc2

      if (answer .eq. result) then
         print *,"ok :",result
      else
         print *,"ng :",result,answer
      endif


  360 continue

      end program main

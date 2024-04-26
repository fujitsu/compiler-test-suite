      real premm(200,200)
      real fa(-50:49,-50:49)
      data premm/40000*0.0/
      data fa/10000*100.0/
      data nmax/10/
      real res

      do j=0,nmax
        do k=-j,j
          do l=0,j
            do m=-l,l
              if ((j-l) < abs(k-m)) cycle
              m1 = j*j+j+1+k
              m2 = l*l+l+1+m
              premm(m1,m2) = fa(l,m)*fa(j-l,k-m) * fa(j,k)*dcmplx(0.d0,1.d0)**(-iabs(m))
            enddo
          enddo
        enddo
      enddo

      res = 0
      do i=1,200
         do j=1,200
            if (premm(i,j) .ne. 0.0) then
               res = res + premm(i,j)
            endif
         enddo
      enddo

      print *,res
      end

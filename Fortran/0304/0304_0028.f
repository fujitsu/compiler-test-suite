      subroutine addrx(aij,colno,zln,ndeg)
      implicit double precision(a-h,o-z)
      integer colno(*)
      double precision zln(ndeg,ndeg,*),aij(ndeg,ndeg)

      do 200 k=ks,ke
         if(colno(k).eq.jj) then
            do 180 m=1,ndeg
               do 190 n=1,ndeg
                  zln(n,m,k)=aij(m,n)
 190           continue
 180        continue
            goto 1000
         endif
 200  continue
 1000 continue
      return
      end subroutine

      print *,"ok"
      end

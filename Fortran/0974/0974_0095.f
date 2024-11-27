      real*4  a(5,5,5),b(5,5,5),c(5,5,5)
      real*4  a2(6,6,6),b2(6,6,6),c2(6,6,6)
      data  a/125*0./,a2/216*0./
      data  b/125*2./,b2/216*-2./
      data  c/125*3./,c2/216*-3./

      do 10 k=1,5
        do 20 j=1,5
          do 30 i=1,5
            if(i.gt.3) then
              a(i,j,k)=b(i,j,k)-c(i,j,k)
             else
              a(i,j,k)=b(i,j,k)*c(i,j,k)
             endif
 30       continue
          do 31 i=1,6
            a2(i,j,k)=b2(i,j,k)+c2(i,j,k)+a2(i,j,k)
 31       continue
 20     continue
 10   continue
      write(6,*) '# a # ',a
      write(6,*) '# a2 # ',a2
      stop
      end

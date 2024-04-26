      real*4  a(20,20),b(20,20),c(20)
      data  a,b/400*1.,400*2./,c/20*3./,nn/10/,answer/0/
      
      do 20 i=1,nn
       l=i
       do 20 j=1,10
        a(i,l)=b(i,j)+c(j)
        b(i,j)=a(i,i)*2.-c(i)
        l=l+1
  20  continue
      do i = 1,10
        do j = 1,10
          answer = answer + b(j,i)
        enddo
      enddo
      if (answer .eq. 700) then
        write(6,*) "ok"
      else
        write(6,*) "ng"
      endif
      end

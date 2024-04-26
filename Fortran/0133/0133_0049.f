      program main
      integer*4  var1(5),var2(5)
      integer*4  var(10)
      integer*4  prg1(2,2),prg2(2,2)
      integer*4  prg3(2,2),prg4(2,2)
      integer*4  isum
      integer*4,parameter::N=5
      integer*4,parameter::ANS=162

      var1 = (/1,4,2,5,3/)
      var2 = (/0,2,1,1,2/)
      prg1 = reshape(var1(1:4),(/2,2/))
      prg2 = reshape(var2(1:4),(/2,2/))
      prg3 = reshape((var1(1:4)+var2(2:5))
     &     -(var1(2:5)+var2(1:4)),(/2,2/))
      prg4 = reshape(var1(2:5)+var2(1:4),(/2,2/))
     &     - reshape(var1(1:4)+var2(2:5),(/2,2/))

      var = 0
      do i=1,N
         var1 = sum((/reshape(prg3,(/4/)),i/))
         var2 = sum((/reshape(prg4,(/4/)),i/))
         where (var1 > var2)
            var(1:N) = dot_product((/var1,var2/),(/var1,var2/))
         elsewhere
            var(1:N) = dot_product((/var1,var2/),(/var2,var1/))
         endwhere
         where (var1 - var2 > 0)
            var(1:N) = var(1:N) - sum((/var1,var2/))
         elsewhere
            var(1:N) = var(1:N) - sum((/var2,var1/))
         endwhere
         do j=1,N
            where (var1 - var2 > 0)
               var(N+1:2*N) = var(N+1:2*N)
     &           + maxval(reshape(var1(1:4),var2(1:4),(/2,2,2/)))
            elsewhere
               var(N+1:2*N) = var(N+1:2*N)
     &           + minval(reshape(var1(1:4),var2(1:4),(/2,2,2/)))
            endwhere
            where (var((/(i,i=2,2*N,2)/))>N)
               var(1:N) = j
            endwhere
            where (var((/(i,i=1,2*N,2)/))>N)
               var(N+1:2*N) = i
            endwhere
         enddo
      enddo

      isum = sum(var)
      if (isum.eq.ANS) then
         print *,"OK"
      else
         print *,isum
         print *,"NG"
      endif
      end

      program main
      integer,parameter::N1=20
      integer,parameter::N2=15
      integer,parameter::N3=12
      integer,parameter::N4=7
      integer,parameter::ANS=80
      real(kind=8) ia1(N1),ia2(N1),ia3(N2),ia4(N3),ia5(N4)

      ia1 = (/(real(i,kind=8),i=N1,1,-1)/)

      do i=1,N1
         ia2(i) = ia1(i)
      enddo

      do i=1,N2
         ia3(i) = ia1(i)
      enddo

      do i=1,N3
         ia4(i) = ia1(i)
      enddo

      do i=1,N4
         ia5(i) = ia1(i)
      enddo

      res = maxval(ia2)+maxval(ia3)+maxval(ia4)+maxval(ia5)

      if (int(res) .eq. ANS) then
         print *,"OK"
      else
         print *,res
         print *,"NG"
      endif

      end program

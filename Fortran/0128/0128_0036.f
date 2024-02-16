      program main
      integer,parameter::N=20
      integer,parameter::ANS=-12
      real(kind=4) ra1(N),ra2(N),ra3(N),ra4(N)
      real(kind=4) rd1,rd2,rd3,rd4,rd5,rd6,rs
      integer(kind=4) ires
      integer(kind=4),parameter::ROT1=1
      integer(kind=4),parameter::ROT2=2

      ra1 = (/(real(mod(i,2)+0.1E0,kind=4),i=N,1,-1)/)
      ra2 = (/(real(mod(i,3)+0.1E0,kind=4),i=N,1,-1)/)
      ra3 = (/(real(mod(i,4)+0.1E0,kind=4),i=N,1,-1)/)
      ra4 = (/(real(mod(i,5)+0.1E0,kind=4),i=N,1,-1)/)

      rd1 = 0.E0
      rd2 = 0.E0
      rd3 = 0.E0
      rd4 = 0.E0
      rs  = 0.E0


      do i=1,ROT2
         rd1 = rd1 + ra1(i)
         rd2 = rd2 + ra2(i)
         rd3 = rd3 + ra3(i)
         rd4 = rd4 + ra4(i)
      enddo

      ires = int(real(rd1+rd2+rd3+rd4, kind=4),kind=4)

      rd6 = 0
      do i=1,ROT2
         rd1 = rd1 + (ra1(i) + ra2(i)) - (ra3(i) + ra4(i))
         rd2 = rd2 + (ra1(i) - ra2(i)) - (ra3(i) - ra4(i))
         rd5 = rd1 + rd2
         rd3 = rd3 + (ra1(i) * ra2(i)) - (ra3(i) * ra4(i))
         rd4 = rd4 + (ra1(i) / ra2(i)) - (ra3(i) / ra4(i))
         rd6 = rd6 + rd4
         rs  = rs + (rd5 - rd6)
      enddo

      ires = ires + int(real(rd1+rd2+rd3+rd4+rs, kind=4),kind=4)

      do i=1,ROT1
         rd1 = rd1 + (ra1(i) + ra2(i)) - (ra3(i) + ra4(i))
         rd2 = rd2 + (ra1(i) - ra2(i)) - (ra3(i) - ra4(i))
         rd5 = rd1 + rd2
         rd3 = rd3 + (ra1(i) * ra2(i)) - (ra3(i) * ra4(i))
         rd4 = rd4 + (ra1(i) / ra2(i)) - (ra3(i) / ra4(i))
         rd6 = rd6 + rd4
         rs  = rs + (rd5 - rd6)
      enddo

      ires = ires + int(real(rd1+rd2+rd3+rd4+rs, kind=4),kind=4)

      ires = ires + max(maxval(ra1),maxval(ra2),maxval(ra3),maxval(ra4))

      if (ires .eq. ANS) then
         print *,"OK"
      else
         print *,"NG"
      endif

      end program

      integer c(17)
      data c(1) /Z'affeebbe'/
      c(2) = z'affeebbe'
      c(3) = z"affeebbe"
      c(4) = Z'affeebbe'
      c(5) = Z"affeebbe"
      c(6) = x'affeebbe'
      c(7) = x"affeebbe"
      c(8) = 'affeebbe'x
      c(9) = "affeebbe"x
      c(10) = o'007700770077'
      c(11) = o"007700770077"
      c(12) = '007700770077'o
      c(13) = "007700770077"o
      c(14) = b'111'
      c(15) = b"101"
      c(16) = B'1011'
      c(17) = B"1101"
      do i=1,17
        write (*,*) i,c(i)
        write (unit=*,fmt="(i5,z10)") i,c(i)
      enddo
      end


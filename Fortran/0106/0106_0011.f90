real b(4)/4*100/,a(1)

a(1) = 55
    do i=1,100000
      n = 0
      do j=0,1
          n = n + 1
          b(n) =  1.
      enddo
      if(b(n) < 2) then
         a(1) =  b(1)
      endif
    enddo
    write(6,*) a
end

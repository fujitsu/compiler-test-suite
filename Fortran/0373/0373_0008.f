      real*8 a(10),b(10),c(10),d(10)
      integer*4 i
      data a/11,21,1,41,51,61,71,81,91,10/
      data c/2.397895272798371,3.044522437723423,0.0000000000000000e+00,
     1       3.713572066704308,3.931825632724325,4.110873864173311,
     1       4.262679877041315,4.394449154672438,4.510859506516850,
     1       2.302585092994045/
      data d/2.397895272798371,4,0.0000000000000000e+00,
     1       16,3.931825632724325,36,
     1       4.262679877041315,64,4.510859506516850,
     1       100/

      do i=1,10
          b(i)=log(a(i))
      enddo

      write(6,*) b
      write(6,*) c

      do i=1,10
        if (mod(i,2)==1) then
          b(i)=log(a(i))
        else
          b(i)=i*i
        endif
      enddo

      write(6,*) b
      write(6,*) d

      stop
      end

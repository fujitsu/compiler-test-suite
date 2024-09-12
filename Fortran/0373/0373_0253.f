      complex(kind=16),dimension(10)::a,b
      data b/3.14159,0.0,8*-3.14159/

      do i=1,10
         a(i)=sin(b(i))
      enddo

      write(6,*) a
      end


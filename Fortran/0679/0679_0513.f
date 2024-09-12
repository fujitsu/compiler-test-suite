      program main
      implicit character*30(r,c)
      character ca*30/'abcdefghijklmnopqrstuvwxyz1234'/,c(30)*30
      real   x(30),y(30),ax(30)
      data x,y/60*1/
      integer n/30/
      data ax / 1.00000000,0.270905793,0.956375957,
     c          0.762558460,-0.132351756,-0.905578375,
     c          -0.846220434,-8.85130931e-03,0.836655617,
     c          0.912945271,0.149877205,-0.750987232,
     c          -0.961397469,-0.287903309,0.650287867,
     c          0.990607381,0.420167029,-0.536572933,
     c          -0.999990225,-0.544021130,0.412118495,
     c          0.989358246,0.656986594,-0.279415488,
     c          -0.958924294,-0.756802499,0.141120002,
     c          0.909297407,0.841470957,1.00000000 /
      do 30 i=2,n-1
       x(i) = y(i) * (n-i)
       c(i)= rnam(ca,i)
       x(i) = sin(x(i))
   30 continue

      do i=1,30
	if( abs((x(i)-ax(i))/x(i)) .gt. 0.1e-5 )  print *,x(i)
	if( abs((y(i)-1.0)/y(i))   .gt. 0.1e-5 )  print *,y(i)
      end do
      write(6,*) ca,'\n',' PASS '
      end
      character*30 function rnam(ca,i)
      implicit character*30(c,r)
      rnam=ca(i:i+1)
      end

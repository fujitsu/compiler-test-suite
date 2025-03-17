       real*4 r,rcode_r4
       real*8 d,rcode_r8
       complex*8 c,rcode_c8
	
       r=2.0
       d=2.0d+0
       c=(1.0,1.0)
       rcode_r4 = sqrt(r)
       rcode_r8 = sqrt(r)
       rcode_c8 = sqrt(r)
       print *,"rcode_r4,rcode_r8,rcode_c8"
       rcode_r8 = sqrt(2.0d+0)
       rcode_c8 = sqrt((1.0,1.0))
       print *,"rcode_r8,rcode_c8"
       end

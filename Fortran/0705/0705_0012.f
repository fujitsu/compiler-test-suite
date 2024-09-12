      call s1
      print *,'pass'
      end
      subroutine s1
      implicit complex(a,s)
      sf1()=(.1,.1)
      sf2(aa)=aa
      a01=(.1,.1)
      if(abs(af( sin( sf2( a01 ) ) )- (0.10033,9.9666e-2))
     1 .gt.0.00001) call err(1)
      if (abs(a01**a01-(0.755,-8.878e-2)).gt.0.01)call err(2)
      if (abs(a01*a01-(0,2e-2)).gt.0.01)call err(3)
      if (a01/a01.ne.1)call err(5)
      if (abs(sf1()-(.1,.1)).gt.0.001)call err(4)
      if(abs(af(af( sin( sf2( a01 ) ) ))- (0.10033,9.9666e-2))
     1 .gt.0.00001) call err(11)
      if (abs(af(a01**a01)-(0.755,-8.878e-2)).gt.0.01)call err(12)
      if (abs(af(a01*a01)-(0,2e-2)).gt.0.01)call err(13)
      if (af(a01/a01).ne.1)call err(15)
      if (abs(af(sf1())-(.1,.1)).gt.0.001)call err(14)
      end
      function af(a)
      implicit complex(a)
      af=a
      end
      subroutine err(i)
      print *,'error code :',i
      end

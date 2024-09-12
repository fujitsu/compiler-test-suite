      call s1
      print *,'pass'
      end
      subroutine s1
      complex*16 cx2(3,3)/(1,1),(2,1),(3,1),(1,2),(2,2),(3,2),
     1                    (1,3),(2,3),(3,3)/
      structure /x/
        complex*16 cx2(3,3)
      end structure
      record /x/ s
      s.cx2=cx2
      do 201 ij2=1,3
      do 201 ij1=1,3
      if (cx2(ij1,ij2).ne.dcmplx(ij1,ij2)) print *,'###2'
 201  if (s.cx2(ij1,ij2).ne.cx2(ij1,ij2) .or. 
     1    s.cx2(ij1,ij2).ne.dcmplx(ij1,ij2)) print *,'%%%2'
      end

      call s1
      print *,'pass'
      end
      block data index_table
      common /index_table_value/ id(0:3,0:3)
      data id(0,0)/0/
      data ((id(i,j),i=1,3),j=1,3)/1,2,3,4,5,6,7,8,9/
      end
      subroutine s1
      common /index_table_value/ id(0:3,0:3)
      structure /z_type/ 
        character*3 z1     ,z2(3,3)
      end structure 
      structure /x_type/
        complex*16 cx1 
        complex*16 cx2(3,3) 
        real*8     r81 
        real*8     r82(3,3)
        integer*4  i41
        integer*4  i42(3,3)
        logical    l41
        logical    l42(3,3)
        integer*2  i21 
        integer*2  i22(3,3)
        logical*1  l11
        logical*1  l12(3,3)
        integer*1  i11  
        integer*1  i12(3,3)
        character*3c21 
        character*3c22(3,3)
        structure /y_type/ yt1, yt2(3,3)
           character*3 y1     ,y2(3,3)
        end structure 
        record /z_type/ zt1,zt2(3,3)
      end structure
      parameter (m1=1,m3=3)
      record /x_type/ a1,a2(3,3),a3(m1:m3,m1:m3),    a5,a6(3,3),
     1                           a7(m1:m3,m1:m3)
      integer*8 ia5,ia6,ia7
      open (81,delim='quote')  
      open (91,delim='quote')  
      open (92,delim='quote')  
      ia5=loc(a5)
      ia6=loc(a6)
      ia7=loc(a7)
      call       s12(a1,a2,a3,ia5,ia6,ia7,m1,m3)
      end
      subroutine chk(s,id1,id2)
      common /index_table_value/ id(0:3,0:3)
      logical,parameter::t=.true.,f=.false.
        complex*16 cx1      
        complex*16 cx2(3,3) 
        real*8     r81      
        real*8     r82(3,3)
        integer*4  i41    
        integer*4  i42(3,3)
        logical    l41    
        logical    l42(3,3)
        integer*2  i21    
        integer*2  i22(3,3)
        logical*1  l11    
        logical*1  l12(3,3) 
        integer*1  i11  
        integer*1  i12(3,3) 
        character*3c21   
        character*3c22(3,3)
           character*3 y1     ,y2(3,3)
        character*3 z1     ,z2(3,3)
      structure /z_type/ 
        character*3 z1     ,z2(3,3)
      end structure 
      structure /x_type/
        complex*16 cx1     
        complex*16 cx2(3,3) 
     1
        real*8     r81    
        real*8     r82(3,3)
        integer*4  i41    
        integer*4  i42(3,3) 
        logical    l41     
        logical    l42(3,3)
        integer*2  i21    
        integer*2  i22(3,3) 
        logical*1  l11     
        logical*1  l12(3,3) 
        integer*1  i11   
        integer*1  i12(3,3)
        character*3c21    
        character*3c22(3,3)
     1
        structure /y_type/ yt1,yt2(3,3)
           character*3 y1     ,y2(3,3)
        end structure 
        record /z_type/ zt1,zt2(3,3)
      end structure
      record /x_type/ s
      character*3 h(3,3)
     1   /'z1x','z2x','z3x','z4x','z5x',
     2    'z6x','z7x','z8x','z9x'/
      integer   r(3,3)/ 1 , 2 , 3 , 4 , 5 , 6 , 7 , 8 , 9 /
      logical   w(3,3)/ t,f,t,f,t,f,t,f,t                 /
      character id_c
      real*8,parameter::g=1.d-4
      rewind 81
      write (81,*) s.cx1,s.cx2
      rewind 81
      read  (81,*) cx1,cx2
      if (abs(s.cx1-cx1)>g .or. 
     1    abs(s.cx1-(4,4)-
     1                   dcmplx(id(id1,id2)*10,10*id(id1,id2)))>g)
     1                                              call err(200,01)
      do 201 ij2=1,3
      do 201 ij1=1,3
201   if (abs(s.cx2(ij1,ij2)-cx2(ij1,ij2))>g .or. 
     1    abs(s.cx2(ij1,ij2)-dcmplx(ij1,ij2)-
     1                   dcmplx(id(id1,id2)*10,10*id(id1,id2)))>g)
     1                                       call err(ij1,ij2)
      rewind 81
      write (81,*) s.r81,s.r82
      rewind 81
      read  (81,*) r81,r82
      if (abs(s.r81-r81)>g .or. abs(s.r81-10.
     1                -dble(id(id1,id2)*10))>g) call err(201,01)
      do 202 ij2=1,3
      do 202 ij1=1,3
202   if (abs(s.r82(ij1,ij2)-r82(ij1,ij2))>g .or. 
     1    abs(s.r82(ij1,ij2)-r     (ij1,ij2)
     1                -dble(id(id1,id2)*10))>g
     1                                     ) call err(ij1,ij2)
      rewind 81
      write (81,*) s.i41,s.i42
      rewind 81
      read  (81,*) i41,i42
      if (s.i41.ne.i41 .or. s.i41.ne.10
     1                +id(id1,id2)*10     
     1                            ) call err(202,01)
      do 203 ij2=1,3
      do 203 ij1=1,3
203   if (s.i42(ij1,ij2).ne.i42(ij1,ij2) .or. 
     1    s.i42(ij1,ij2).ne.r     (ij1,ij2)
     1                +id(id1,id2)*10     
     1                                     ) call err(ij1,ij2)
      rewind 81
      write (81,*) s.l41,s.l42
      rewind 81
      read  (81,*) l41,l42
      if (mod(id(id1,id2),1)==1) then
        if ((s.l41.neqv.l41) .or. (s.l41.neqv..not.t )) call err(203,01)
      else
        if ((s.l41.neqv.l41) .or. (s.l41.neqv.t) ) call err(203,01)
      endif
      do 204 ij2=1,3
      do 204 ij1=1,3
      if (mod(id(id1,id2),1)==1) then
        if ((s.l42(ij1,ij2).neqv.l42(ij1,ij2)) .or. 
     1      (s.l42(ij1,ij2).neqv..not.w(ij1,ij2))) call err(ij1,ij2)
      else
        if ((s.l42(ij1,ij2).neqv.l42(ij1,ij2)) .or. 
     1      (s.l42(ij1,ij2).neqv.     w(ij1,ij2))) call err(ij1,ij2)
      endif
 204  continue
      rewind 81
      write (81,*) s.i21,s.i22
      rewind 81
      read  (81,*) i21,i22
      if (s.i21.ne.i21 .or. s.i21.ne.10+10*id(id1,id2)) call err(204,01)
      do 205 ij2=1,3
      do 205 ij1=1,3
205   if (s.i22(ij1,ij2).ne.i22(ij1,ij2) .or. 
     1    s.i22(ij1,ij2).ne.r     (ij1,ij2)
     1     +id(id1,id2)*10) call err(ij1,ij2)
      rewind 81
      write (81,*) s.l11,s.l12
      rewind 81
      read  (81,*) l11,l12
      if (mod(id(id1,id2),1)==1) then
        if ((s.l11.neqv.l11) .or. (s.l11.neqv..not.t) ) call err(205,01)
      else
        if ((s.l11.neqv.l11) .or. (s.l11.neqv.t )) call err(205,01)
      endif
      do 206 ij2=1,3
      do 206 ij1=1,3
      if (mod(id(id1,id2),1)==1) then
         if ((s.l12(ij1,ij2).neqv.l12(ij1,ij2)) .or. 
     1       (s.l12(ij1,ij2).neqv..not.w (ij1,ij2))) call err(ij1,ij2)
      else
         if ((s.l12(ij1,ij2).neqv.l12(ij1,ij2)) .or. 
     1       (s.l12(ij1,ij2).neqv.w(ij1,ij2))) call err(ij1,ij2)
      endif
206   continue
      rewind 81
      write (81,*) s.i11,s.i12
      rewind 81
      read  (81,*) i11,i12
      if (s.i11.ne.i11 .or. s.i11.ne.10+id(id1,id2)*10) call err(206,01)
      do 207 ij2=1,3
      do 207 ij1=1,3
207   if (s.i12(ij1,ij2).ne.i12(ij1,ij2) .or. 
     1    s.i12(ij1,ij2).ne.r     (ij1,ij2)
     1         + id(id1,id2)*10             ) call err(ij1,ij2)
      write(id_c,'(i1)') id(id1,id2)
      m2=2
      m3=3
      rewind 81
      write (81,*) s.c21,s.c22
      rewind 81
      read  (81,*) c21,c22
      if (s.c21.ne.c21 .or. s.c21.ne.id_c//'ax') call err(207,01)
      do 208 ij2=1,3
      do 208 ij1=1,3
208   if (s.c22(ij1,ij2).ne.c22(ij1,ij2) .or. 
     1    s.c22(ij1,ij2).ne.id_c//h(ij1,ij2)(m2:m3)) call err(ij1,ij2)
      rewind 81
      write (81,*) s.yt1.y1, s.yt1.y2
      rewind 81
      read  (81,*) y1 ,y2 
      if (s.yt1.y1.ne.y1 .or. s.yt1.y1.ne.id_c//'ax') call err(207,01)
      do 210 ij2=1,3
      do 210 ij1=1,3
210   if (s.yt1.y2(ij1,ij2).ne.y2(ij1,ij2) .or. 
     1    s.yt1.y2(ij1,ij2).ne.id_c//h(ij1,ij2)(m2:3)) call err(ij1,ij2)
      do 209 ij4=1,3
      do 209 ij3=1,3
      rewind 81
      write (81,*) s.yt2(ij3,ij4).y1, s.yt2(ij3,ij4).y2
      rewind 81
      read  (81,*) y1 ,y2 
      if (s.yt2(ij3,ij4).y1.ne.y1 .or. 
     1    s.yt2(ij3,ij4).y1.ne.id_c//'ax') call err(208,01)
      rewind 81
      write (81,*) s.zt1.z1, s.zt1.z2
      rewind 81
      read  (81,*) z1 ,z2 
      if (s.zt1.z1.ne.z1 .or. s.zt1.z1.ne.id_c//'ax') call err(217,01)
      do 220 ij2=1,3
      do 220 ij1=1,3
220   if (s.zt1.z2(ij1,ij2).ne.z2(ij1,ij2) .or. 
     1    s.zt1.z2(ij1,ij2).ne.id_c//h(ij1,ij2)(2:m3)) call err(ij1,ij2)
      do 209 ij2=1,3
      do 209 ij1=1,3
209   if (s.yt2(ij3,ij4).y2(ij1,ij2).ne.y2(ij1,ij2) .or. 
     1    s.yt2(ij3,ij4).y2(ij1,ij2).ne.
     1                  id_c//h(ij1,ij2)(m2:m3)) call err(ij1,ij2)
      do 211 ij4=1,3
      do 211 ij3=1,3
      rewind 81
      write (81,*) s.zt2(ij3,ij4).z1, s.zt2(ij3,ij4).z2
      rewind 81
      read  (81,*) z1 ,z2 
      if (s.zt2(ij3,ij4).z1.ne.z1 .or. 
     1    s.zt2(ij3,ij4).z1.ne.id_c//'ax') call err(211,01)
      do 211 ij2=1,3
      do 211 ij1=1,3
211   if (s.zt2(ij3,ij4).z2(ij1,ij2).ne.z2(ij1,ij2) .or. 
     1    s.zt2(ij3,ij4).z2(ij1,ij2).ne.
     1               id_c//h  (ij1,ij2)(m2:3)) call err(ij1,ij2)
      end
      subroutine set_id(s,id)
      structure /z_type/ 
        character*3 z1     ,z2(3,3)
      end structure 
      structure /x_type/
        complex*16 cx1     
        complex*16 cx2(3,3) 
     1                     
        real*8     r81    
        real*8     r82(3,3)
        integer*4  i41    
        integer*4  i42(3,3) 
        logical    l41     
        logical    l42(3,3)
        integer*2  i21    
        integer*2  i22(3,3) 
        logical*1  l11     
        logical*1  l12(3,3) 
        integer*1  i11   
        integer*1  i12(3,3)
        character*3c21    
        character*3c22(3,3)
        structure /y_type/ yt1,yt2(3,3)
           character*3 y1     ,y2(3,3)
        end structure 
        record /z_type/ zt1,zt2(3,3)
      end structure
      record /x_type/ s
      character id_c
      write(id_c,'(i1)') id
      m2=2
      m3=3
      s.cx1 = s.cx1+dcmplx(id*10,id*10)
      s.cx2 = s.cx2+dcmplx(id*10,id*10)
      s.r81 = s.r81+dble(id*10)
      s.r82 = s.r82+dble(id*10)
      s.i41 = s.i41+id*10
      s.i42 = s.i42+id*10
      if (mod(id,1)==1) s.l41=.not.s.l41
      if (mod(id,1)==1) s.l42=.not.s.l42
      s.i21 = s.i21+id*10
      s.i22 = s.i22+id*10
      if (mod(id,1)==1) s.l11=.not.s.l11
      if (mod(id,1)==1) s.l12=.not.s.l12
      s.i11 = s.i11+id*10
      s.i12 = s.i12+id*10
      s.c21 = id_c//s.c21(2:3)
      s.c22 = id_c//s.c22(:,:)(m2:3)
      s.yt1.y1 = id_c//s.yt1.y1(2:m3)
      s.zt1.z1 = id_c//s.zt1.z1(m2:m3)
      s.yt1.y2 = id_c//s.yt1.y2(:,:)(m2:m3)
      s.zt1.z2 = id_c//s.zt1.z2(:m3,:)(m2:3)
      s.yt2.y1 = id_c//s.yt2.y1(m2:m3)
      s.zt2.z1 = id_c//s.zt2.z1(2:3)
      do ij1=1,3
      do ij2=1,3
         s.yt2(ij1,ij2).y2 = id_c//s.yt2(ij1,ij2).y2(:m3,:m3)(m2:m3)
         s.zt2.z2(ij1,ij2) = id_c//s.zt2.z2(ij1,ij2)(m2:3)
      end do
      end do
      end
      subroutine set_s(s)
      common /index_table_value/ id(0:3,0:3)
      logical,parameter::t=.true.,f=.false.
      structure /zz_type/ 
        character*3 z1/'zax'/,z2(3,3)
      end structure 
      structure /xx_type/
        complex*16 cx1      /(4,4)/
        complex*16 cx2(3,3) /(1,1),(2,1),(3,1),(1,2),(2,2),(3,2),
     1                       (1,3),(2,3),(3,3)/
        real*8     r81      /10/
        real*8     r82(3,3) /1,2,3,4,5,6,7,8,9/
        integer*4  i41      /10/
        integer*4  i42(3,3) /1,2,3,4,5,6,7,8,9/
        logical    l41      /t/
        logical    l42(3,3) /t,f,t,f,t,f,t,f,t/
        integer*2  i21      /10/
        integer*2  i22(3,3) /1,2,3,4,5,6,7,8,9/
        logical*1  l11      /t /
        logical*1  l12(3,3) /t,f,t,f,t,f,t,f,t/
        integer*1  i11      /10/
        integer*1  i12(3,3) /1,2,3,4,5,6,7,8,9/
        character*3c21      /'zax'/
        character*3c22(3,3)
     1   /'z1x','z2x','z3x','z4x','z5x',
     2    'z6x','z7x','z8x','z9x'/
        structure /yy_type/ yt1,yt2(3,3)
           character*3 y1/'zax'/,y2(3,3)
        end structure 
        record /zz_type/ zt1,zt2(3,3)
      end structure
      structure /z_type/ 
        character*3 z1     ,z2(3,3)
      end structure 
      structure /x_type/
        complex*16 cx1     
        complex*16 cx2(3,3) 
        real*8     r81    
        real*8     r82(3,3)
        integer*4  i41    
        integer*4  i42(3,3) 
        logical    l41     
        logical    l42(3,3)
        integer*2  i21    
        integer*2  i22(3,3) 
        logical*1  l11     
        logical*1  l12(3,3) 
        integer*1  i11   
        integer*1  i12(3,3)
        character*3c21    
        character*3c22(3,3)
        structure /y_type/ yt1,yt2(3,3)
           character*3 y1     ,y2(3,3)
        end structure 
        record /z_type/ zt1,zt2(3,3)
      end structure
      character*3 h(3,3)
     1   /'z1x','z2x','z3x','z4x','z5x',
     2    'z6x','z7x','z8x','z9x'/
      record /xx_type/ a_init
      record /x_type/ s,a(i,j)
      a_init.zt1.z2 = h
      a_init.yt1.y2 = h
      do ij1 =1,3
      do ij2 =1,3
        a_init.zt2(ij2,ij1).z2=h
        a_init.yt2(ij2,ij1).y2=h
      end do
      end do
      call set_id(a_init,000)
      rewind 91
      write(91,*) a_init
      rewind 91
      read (91,*) s
      call chk(s,0,0)
      return
      entry set_a(a,i,j)
      a_init.zt1.z2 = h
      a_init.yt1.y2 = h
      do ij1 =1,j
      do ij2 =1,i
        a_init.zt2(ij2,ij1).z2=h
        a_init.yt2(ij2,ij1).y2=h
      end do
      end do
      rewind 92
      write(92,*) a_init
      rewind 92
      read (92,*) a(1,1)
      do ij3=1,j
      do ij4=1,i
        if (ij3==1 .and. ij4==1) cycle
        a(ij3,ij4) = a(1,1)    
      end do   
      end do   
      call set_id(a(1,1),id(1,1))
      call chk(a(1,1),1,1)
      do 10 ij3=1,j
      do 10 ij4=1,i
        if (ij3==1 .and. ij4==1) cycle
        call set_id(a(ij3,ij4),id(ij3,ij4))
        call chk(a(ij3,ij4),ij3,ij4)
  10  continue
      end
      subroutine s12(a1,a2,a3,ia5,ia6,ia7,m1,m3)
      common /index_table_value/ id(0:3,0:3)
      structure /z_type/ 
        character*3 z1     ,z2(3,3)
      end structure 
      structure /x_type/
        complex*16 cx1    
        complex*16 cx2(3,3)
        real*8     r81     
        real*8     r82(3,3) 
        integer*4  i41     
        integer*4  i42(3,3) 
        logical    l41    
        logical    l42(3,3)
        integer*2  i21    
        integer*2  i22(3,3)
        logical*1  l11  
        logical*1  l12(3,3)
        integer*1  i11    
        integer*1  i12(3,3) 
        character*3c21   
        character*3c22(3,3)
        structure /y_type/ yt1,yt2(3,3)
           character*3 y1     ,y2(3,3)
        end structure 
        record /z_type/ zt1,zt2(3,3)
      end structure
      record /x_type/ a1,a2(3,3),a3(m1:m3,m1:m3),a4(:,:),a5,a6(3,3),
     1                           a7(m1:m3,m1:m3)
      pointer (ia5,a5),(ia6,a6),(ia7,a7)
      integer it(0:50)
      equivalence (it(0),itn)
      character end_c
      integer cnv(3,3)/1,2,3,4,5,6,7,8,9/
      allocatable a4
      allocate (a4(3,3))
      call set_s(a1)
      call set_a(a2,3,3)
      call set_a(a3,3,3)
      call set_a(a4,3,3)
      call set_s(a5)
      call set_a(a6,3,3)
      call set_a(a7,3,3)
      open (21,delim='quote')
      write(21,*) a1
      itn=1 
      it(1)=0
      call chk_is(21,it)  
      read (21,*,end=1000) end_c
      print *,'error code : 1000'
      print *,'fail'
1000  continue
      rewind 21
      ij2=2
      write(78,*) a2(2,1)
      write(21,*) (a2(:,ij1),ij1=1,ij2),a2(:,ij2+1)
      itn=9
      do ij1=1,itn
        it(ij1)=ij1
      enddo
      call chk_is(21,it) 
      read (21,*,end=1001) end_c
      print *,'error code : 1001'
      print *,'fail'
1001  continue
      open (22,delim='quote')
      write(22,*) ((a3(ij1,ij2),ij1=1,3,2),ij2=1,3,2),
     1            a3(2,:),(a3(ij3,2),ij3=1,3,2)
      itn=0
      do ij2=1,3,2
      do ij1=1,3,2
       itn=itn+1
       it(itn)=cnv(ij1,ij2)
      end do
      end do
      do ij1=1,3
       itn=itn+1
       it(itn)=cnv(2,ij1)
      end do
      do ij3=1,3,2
       itn=itn+1
       it(itn)=cnv(ij3,2)
      end do
      call chk_is(22,it) 
      read (22,*,end=1002) end_c
      print *,'error code : 1002'
      print *,'fail'
1002  continue
      rewind 22
      ij2=3
      write(22,*) ((a4(ij3,ij4),ij3=1,ij2),ij4=1,3)
      itn=0
      do ij3=1,ij2
      do ij4=1,3
       itn=itn+1
       it(itn)=cnv(ij4,ij3)
      end do
      end do
      call chk_is(22,it)  
      read (22,*,end=1003) end_c
      print *,'error code : 1003'
      print *,'fail'
1003  continue
      open (23,delim='quote')
      write(23,*) a5
      itn=1 
      it(1)=0
      call chk_is(23,it)   
      rewind 23
      ij2=2
      write(23,*) (a6(:,:),ij1=2,ij2)
      itn=9
      do ij1=1,itn
        it(ij1)=ij1
      enddo
      call chk_is(23,it)
      open (24,delim='quote')
      ij1=1
      ij2=2
      ij3=3
      write(24,*) a7(ij1:ij3:ij2,1:3:2),a7(ij2:ij2:ij2,2:2:2)
      itn=0
      do ij4=1,3,2
      do ij5=ij1,ij3,ij2
       itn=itn+1
       it(itn)=cnv(ij5,ij4)
      end do
      end do
      do ij4=2,2,2
      do ij5=ij2,ij2,ij2
       itn=itn+1
       it(itn)=cnv(ij5,ij4)
      end do
      end do
      call chk_is(24,it) 
      open (31,delim='quote')
      write(31,*) a1,a5
      itn=2
      it(itn)=0
      it(itn-1)=0
      call chk_is(31,it)
      rewind 31
      write(31,*) a2,a3,a4,a6,a7
      itn=9*5
      ix = 0
      do ij1=1,itn
        ix=ix+1
        if (ix > 9 ) ix=1
        it(ij1)=ix 
      enddo
      call chk_is(31,it)
      end
      subroutine chk_is(iunit,it)
      common /index_table_value/ id(0:3,0:3)
      logical,parameter::t=.true.,f=.false.
      structure /z_type/ 
        character*3 z1     ,z2(3,3)
      end structure 
      structure /x_type/
        complex*16 cx1     
        complex*16 cx2(3,3) 
     1
        real*8     r81    
        real*8     r82(3,3)
        integer*4  i41    
        integer*4  i42(3,3) 
        logical    l41     
        logical    l42(3,3)
        integer*2  i21    
        integer*2  i22(3,3) 
        logical*1  l11     
        logical*1  l12(3,3) 
        integer*1  i11   
        integer*1  i12(3,3)
        character*3c21    
        character*3c22(3,3)
     1
        structure /y_type/ yt1,yt2(3,3)
           character*3 y1     ,y2(3,3)
        end structure 
        record /z_type/ zt1,zt2(3,3)
      end structure
      record /x_type/ s(9*5)
      character*3 h(3,3)
     1   /'?1x','?2x','?3x','?4x','?5x','?6x','?7x','?8x','?9x'/
      integer   r(3,3)/ 1 , 2 , 3 , 4 , 5 , 6 , 7 , 8 , 9 /
      logical   w(3,3)/ t,f,t,f,t,f,t,f,t                 /
      character id_c 
      integer,dimension(0:*)::it
      real*8,parameter::g=1.d-4
      if (it(0).le.0) print *,'fail'
      rewind iunit
      read  (iunit,*)(
     1  s(loop_time).cx1,s(loop_time).cx2,
     1  s(loop_time).r81,s(loop_time).r82, 
     1  s(loop_time).i41,s(loop_time).i42,
     1  s(loop_time).l41,s(loop_time).l42,
     1  s(loop_time).i21,s(loop_time).i22, 
     1  s(loop_time).l11,s(loop_time).l12, 
     1  s(loop_time).i11,s(loop_time).i12,
     2  s(loop_time).c21,s(loop_time).c22, 
     3  s(loop_time).yt1.y1, s(loop_time).yt1.y2,
     4  s(loop_time).yt2(1,1).y1, s(loop_time).yt2(1,1).y2,
     4  s(loop_time).yt2(2,1).y1, s(loop_time).yt2(2,1).y2,
     4  s(loop_time).yt2(3,1).y1, s(loop_time).yt2(3,1).y2,
     4  s(loop_time).yt2(1,2).y1, s(loop_time).yt2(1,2).y2,
     4  s(loop_time).yt2(2,2).y1, s(loop_time).yt2(2,2).y2,
     4  s(loop_time).yt2(3,2).y1, s(loop_time).yt2(3,2).y2,
     4  s(loop_time).yt2(1,3).y1, s(loop_time).yt2(1,3).y2,
     4  s(loop_time).yt2(2,3).y1, s(loop_time).yt2(2,3).y2,
     4  s(loop_time).yt2(3,3).y1, s(loop_time).yt2(3,3).y2,
     7  s(loop_time).zt1.z1, s(loop_time).zt1.z2 ,
     8  ((s(loop_time).zt2(ij3,ij4).z1 ,
     9    s(loop_time).zt2(ij3,ij4).z2 , ij3=1,3),ij4=1,3)
     1  ,loop_time =1,it(0))  
      do loop_time =1,it(0)   
      do loop_value=it(loop_time),it(max(loop_time,0))
      if (abs(s(loop_time).cx1-(4,4)-
     1   dcmplx(loop_value*10,loop_value*10))>g) call err(1200,01)
      do 201 ij2=1,3
      do 201 ij1=1,3
201   if (abs(s(loop_time).cx2(ij1,ij2)-dcmplx(ij1,ij2)-
     1   dcmplx(loop_value*10,loop_value*10))>g) call err(ij1,ij2)
      if (abs(s(loop_time).r81-10.-loop_value*10)>g) call err(1201,01)
      do 202 ij2=1,3
      do 202 ij1=1,3
202   if (abs(s(loop_time).r82(ij1,ij2)-r     (ij1,ij2)
     1       -dble(loop_value*10))>g) call err(ij1,ij2)
      if (s(loop_time).i41.ne.10+loop_value*10) call err(1202,01)
      do 203 ij2=1,3
      do 203 ij1=1,3
203   if (s(loop_time).i42(ij1,ij2).ne.r     (ij1,ij2)
     1       +loop_value*10) call err(ij1,ij2)
      if (mod(loop_value,1)==1) then
        if (s(loop_time).l41.neqv..not.t ) call err(1203,01)
      else
        if (s(loop_time).l41.neqv.t ) call err(1203,01)
      endif
      do 204 ij2=1,3
      do 204 ij1=1,3
         if (mod(loop_value,1)==1) then
           if (s(loop_time).l42(ij1,ij2).neqv.
     1                      .not.w(ij1,ij2)) call err(ij1,ij2)
         else
           if (s(loop_time).l42(ij1,ij2).neqv.
     1                           w(ij1,ij2)) call err(ij1,ij2)
         endif
204   continue
      if (s(loop_time).i21.ne.10+loop_value*10) call err(1204,01)
      do 205 ij2=1,3
      do 205 ij1=1,3
205   if (s(loop_time).i22(ij1,ij2).ne.
     1                      r(ij1,ij2)+loop_value*10) call err(ij1,ij2)
      if (mod(loop_value,1).eq.1) then
         if (s(loop_time).l11.neqv..not.t ) call err(1205,01)
      else
         if (s(loop_time).l11.neqv.t ) call err(1205,01)
      endif
      do 206 ij2=1,3
      do 206 ij1=1,3
         if (mod(loop_value,1)==1) then
           if (s(loop_time).l12(ij1,ij2).neqv.
     1                         .not.w(ij1,ij2)) call err(ij1,ij2)
         else
           if (s(loop_time).l12(ij1,ij2).neqv.
     1                              w(ij1,ij2)) call err(ij1,ij2)
         endif
206   continue
      if (s(loop_time).i11/= 10+10*loop_value) call err(1206,01)
      m2=2
      m3=3
      do 207 ij2=1,3
      do 207 ij1=1,3
207   if (s(loop_time).i12(ij1,ij2).ne.
     1                      r(ij1,ij2)+loop_value*10) call err(ij1,ij2)
      call cnv_write(id_c, loop_value)
      if (s(loop_time).c21.ne.id_c//'ax') call err(1207,01)
      do 208 ij2=1,3
      do 208 ij1=1,3
      if (s(loop_time).c22(ij1,ij2).ne.
     1              id_c//h(ij1,ij2)(2:3)) then
       print *,'##1',(loop_time)
       print *,'##2',s(loop_time).c22(ij1,ij2)
       print *,'##3',id_c//h(ij1,ij2)(2:3)
       print *,'##4',ij1,ij2
      endif
208   if (s(loop_time).c22(ij1,ij2).ne.
     1              id_c//h(ij1,ij2)(2:3)) call err(ij1,ij2)
      if (s(loop_time).yt1.y1.ne.id_c//'ax') call err(1217,01)
      do 210 ij2=1,3
      do 210 ij1=1,3
210   if (s(loop_time).yt1.y2(ij1,ij2).ne.
     1                  id_c//h(ij1,ij2)(m2:m3))call err(ij1,ij2)
      do 209 ij4=1,3
      do 209 ij3=1,3
      if (s(loop_time).yt2(ij3,ij4).y1.ne.id_c//'ax') then
       print *,'##1#',(loop_time)
       print *,'##2#',s(loop_time).yt2(ij3,ij4).y1
       print *,'##3#',id_c//'ax'
       print *,'##4#',ij3,ij4
      endif
      if (s(loop_time).yt2(ij3,ij4).y1.ne.id_c//'ax') call err(1208,01)
      do 209 ij2=1,3
      do 209 ij1=1,3
209   if (s(loop_time).yt2(ij3,ij4).y2(ij1,ij2).ne.
     1                 id_c//h(ij1,ij2)(m2:)) call err(ij1,ij2)
      if (s(loop_time).zt1.z1.ne.id_c//'ax') call err(1217,01)
      do 220 ij2=1,3
      do 220 ij1=1,3
220   if (s(loop_time).zt1.z2(ij1,ij2).ne.
     1                     id_c//h(ij1,ij2)(m2:3)) call err(ij1,ij2)
      do 211 ij4=1,3
      do 211 ij3=1,3
      if (s(loop_time).zt2(ij3,ij4).z1.ne.id_c//'ax') call err(211,01)
      do 211 ij2=1,3
      do 211 ij1=1,3
211   if (s(loop_time).zt2(ij3,ij4).z2(ij1,ij2).ne.
     1          id_c//h(ij1,ij2)(m2:m3)) call err(ij1,ij2)
      enddo
      enddo
      end
      subroutine err(i,j)
      print *,'error code :',i,j
      print *,'fail'
      stop
      end
      subroutine cnv_write(c,i)
      character*(*) c
      write(c,'(i1)') i
      end

      common x(3,3),y(3,3)
      dimension  a(3,3)
      data       b/1.0/,cc/1./
      data       c/1.0/
      call osp411(a,b,cc)
      do 10 i=1,3
      do 10 j=1,3
       c=c+i
       b=b+j
       x(i,j)=b
       y(i,j)=c
    1  oc=c+1.0
    2  ob=b+2.0
   10  a(i,j)=oc+ob
      if (cc.ne.c
     1.or.cc.ne.19.) then
       print *,'*** ng ***'
       print *,x
       print *,y
       write(6,100) a,b,cc
  100  format(1h ,3(/1h ,3e15.7),/1h ,2e15.7)
      else
       print *,'*** ok ***'
       end if
      end
      function  ofp411(x)
      ofp411=x+1.0
      return
      end
      function  ofp412(y)
      ofp412=y+2.0
      return
      end
      subroutine  osp411(aa,bb,cc)
      common x(3,3),y(3,3)
      dimension   aa(3,3)
      do 10 i=1,3
      do 10 j=1,3
      cc=cc+i
      bb=bb+j
      x(i,j)=bb
      y(i,j)=cc
   10 aa(i,j)=ofp411(cc)+ofp412(bb)
      return
      end

c
c
      call s1
      print *,'pass'
      end
      module m1
      interface q
       module procedure qs,qa
      end interface
      integer is1,is2
      integer js1,js2
      contains
      subroutine qs(ts,r,ps)
      character(*),optional::ts
      character(*),optional::ps
      character(*)::r
      intent(in)ts,r
      if (len(r )/=1)print *,'fail'; if (r/='1')print *,'fail'
      if (present(ts))then
        if (ts/='2')print *,'fail'
      else
        if (is1/=0)print *,'fail'
      end if
      if (present(ps))then
        if (ps/='3')print *,'fail'
      else
        if (is2/=0)print *,'fail'
      end if
      end subroutine
      subroutine qa(ts,ps,r)
      character(*),optional::ts
      character(*),optional::ps
      character(*)::r(:,:,:)
      intent(in)ts,r
      if (len(r )/=1)print *,'fail'
      if (any(r/=reshape((/'a','b'/),(/1,1,2/))))print *,'fail'
      if (size(r )/=2)print *,'fail'
      if (present(ts))then
        if (ts/='c')print *,'fail'
      else
        if (js1/=0)print *,'fail'
      end if
      if (present(ps))then
        if (ps/='d')print *,'fail'
      else
        if (js2/=0)print *,'fail'
      end if
      end subroutine
      end 
      subroutine s1
      use m1
      character a1(1,1,2)/'x','1'/
      character a2(1,1,2)/'x','2'/
      character a3(1,1,2)/'x','3'/
      character b1(1,1,2)/'a','b'/
      character b2(1,1,2)/'x','c'/
      character b3(1,1,2)/'x','d'/
      integer iv(1),ik(2)
      is1=1;is2=1
      do i=1,1;do k=2,i
      iv(1)=i;ik(1)=1;ik(2)=2
      call q(r ='1',ts='2',ps='3')
      call q(r ='1',ps='3',ts='2')
      call q(ts='2',r ='1',ps='3')
      call q(ts='2',ps='3',r='1')
      call q(ps='3',ts='2',r='1')
      call q(ps='3',r ='1',ts='2')
      is1=0;is2=1
      call q(       r ='1',ps='3')
      call q(       ps='3',r='1')
      is1=1;is2=0
      call q(       r ='1',ts='2')
      call q(       ts='2',r='1')
      is1=0;is2=0
      call q(              r='1')
      is1=1;is2=1
      call q(r =a1(1,1,2),ts=a2(1,1,2),ps=a3(1,1,2))
      call q(r =a1(1,1,2),ps=a3(1,1,2),ts=a2(1,1,2))
      call q(ts=a2(1,1,2),r =a1(1,1,2),ps=a3(1,1,2))
      call q(ts=a2(1,1,2),ps=a3(1,1,2),r=a1(1,1,2))
      call q(ps=a3(1,1,2),ts=a2(1,1,2),r=a1(1,1,2))
      call q(ps=a3(1,1,2),r =a1(1,1,2),ts=a2(1,1,2))
      is1=0;is2=1
      call q(       r =a1(1,1,2),ps=a3(1,1,2))
      call q(       ps=a3(1,1,2),r=a1(1,1,2))
      is1=1;is2=0
      call q(       r =a1(1,1,2),ts=a2(1,1,2))
      call q(       ts=a2(1,1,2),r=a1(1,1,2))
      is1=0;is2=0
      call q(              r=a1(1,1,2))
      is1=1;is2=1
      call q(r =a1(i,i,k),ts=a2(i,i,k),ps=a3(i,i,k))
      call q(r =a1(i,i,k),ps=a3(i,i,k),ts=a2(i,i,k))
      call q(ts=a2(i,i,k),r =a1(i,i,k),ps=a3(i,i,k))
      call q(ts=a2(i,i,k),ps=a3(i,i,k),r=a1(i,i,k))
      call q(ps=a3(i,i,k),ts=a2(i,i,k),r=a1(i,i,k))
      call q(ps=a3(i,i,k),r =a1(i,i,k),ts=a2(i,i,k))
      is1=0;is2=1
      call q(       r =a1(i,i,k),ps=a3(i,i,k))
      call q(       ps=a3(i,i,k),r=a1(i,i,k))
      is1=1;is2=0
      call q(       r =a1(i,i,k),ts=a2(i,i,k))
      call q(       ts=a2(i,i,k),r=a1(i,i,k))
      is1=0;is2=0
      call q(              r=a1(i,i,k))
      is1=1;is2=1
      call q(r =a1(1,1,2)(1:1),ts=a2(1,1,2)(1:1),ps=a3(1,1,2)(1:1))
      call q(r =a1(1,1,2)(1:1),ps=a3(1,1,2)(1:1),ts=a2(1,1,2)(1:1))
      call q(ts=a2(1,1,2)(1:1),r =a1(1,1,2)(1:1),ps=a3(1,1,2)(1:1))
      call q(ts=a2(1,1,2)(1:1),ps=a3(1,1,2)(1:1),r=a1(1,1,2)(1:1))
      call q(ps=a3(1,1,2)(1:1),ts=a2(1,1,2)(1:1),r=a1(1,1,2)(1:1))
      call q(ps=a3(1,1,2)(1:1),r =a1(1,1,2)(1:1),ts=a2(1,1,2)(1:1))
      is1=0;is2=1
      call q(       r =a1(1,1,2)(1:1),ps=a3(1,1,2)(1:1))
      call q(       ps=a3(1,1,2)(1:1),r=a1(1,1,2)(1:1))
      is1=1;is2=0
      call q(       r =a1(1,1,2)(1:1),ts=a2(1,1,2)(1:1))
      call q(       ts=a2(1,1,2)(1:1),r=a1(1,1,2)(1:1))
      is1=0;is2=0
      call q(              r=a1(1,1,2)(1:1))
      is1=1;is2=1
      call q(r =a1(i,i,k)(1:i),ts=a2(i,i,k)(1:i),ps=a3(i,i,k)(1:i))
      call q(r =a1(i,i,k)(1:i),ps=a3(i,i,k)(1:i),ts=a2(i,i,k)(1:i))
      call q(ts=a2(i,i,k)(1:i),r =a1(i,i,k)(1:i),ps=a3(i,i,k)(1:i))
      call q(ts=a2(i,i,k)(1:i),ps=a3(i,i,k)(1:i),r=a1(i,i,k)(1:i))
      call q(ps=a3(i,i,k)(1:i),ts=a2(i,i,k)(1:i),r=a1(i,i,k)(1:i))
      call q(ps=a3(i,i,k)(1:i),r =a1(i,i,k)(1:i),ts=a2(i,i,k)(1:i))
      is1=0;is2=1
      call q(       r =a1(i,i,k)(1:i),ps=a3(i,i,k)(1:i))
      call q(       ps=a3(i,i,k)(1:i),r=a1(i,i,k)(1:i))
      is1=1;is2=0
      call q(       r =a1(i,i,k)(1:i),ts=a2(i,i,k)(1:i))
      call q(       ts=a2(i,i,k)(1:i),r=a1(i,i,k)(1:i))
      is1=0;is2=0
      call q(              r=a1(i,i,k)(1:i))
      is1=1;is2=1
      call q(r =reshape((/'a','b'/),(/1,1,2/)),ts='c',ps='d')
      call q(r =reshape((/'a','b'/),(/1,1,2/)),ps='d',ts='c')
      call q(ts='c',r =reshape((/'a','b'/),(/1,1,2/)),ps='d')
      call q(ts='c',ps='d',r=reshape((/'a','b'/),(/1,1,2/)))
      call q(ps='d',ts='c',r=reshape((/'a','b'/),(/1,1,2/)))
      call q(ps='d',r =reshape((/'a','b'/),(/1,1,2/)),ts='c')
      js1=0;js2=1
      call q(       r =reshape((/'a','b'/),(/1,1,2/)),ps='d')
      call q(       ps='d',r=reshape((/'a','b'/),(/1,1,2/)))
      js1=1;js2=0
      call q(       r =reshape((/'a','b'/),(/1,1,2/)),ts='c')
      call q(       ts='c',r=reshape((/'a','b'/),(/1,1,2/)))
      js1=0;js2=0
      call q(              r=reshape((/'a','b'/),(/1,1,2/)))
      js1=1;js2=1
      call q(r =b1,ts=b2(1,1,2),ps=b3(1,1,2))
      call q(r =b1,ps=b3(1,1,2),ts=b2(1,1,2))
      call q(ts=b2(1,1,2),r =b1,ps=b3(1,1,2))
      call q(ts=b2(1,1,2),ps=b3(1,1,2),r=b1)
      call q(ps=b3(1,1,2),ts=b2(1,1,2),r=b1)
      call q(ps=b3(1,1,2),r =b1,ts=b2(1,1,2))
      js1=0;js2=1
      call q(       r =b1,ps=b3(1,1,2))
      call q(       ps=b3(1,1,2),r=b1)
      js1=1;js2=0
      call q(       r =b1,ts=b2(1,1,2))
      call q(       ts=b2(1,1,2),r=b1)
      js1=0;js2=0
      call q(              r=b1)
      js1=1;js2=1
      call q(r =b1(1:i,i:1,1:2),ts=b2(i,i,k),ps=b3(i,i,k))
      call q(r =b1(1:i,i:1,1:2),ps=b3(i,i,k),ts=b2(i,i,k))
      call q(ts=b2(i,i,k),r =b1(1:i,i:1,1:2),ps=b3(i,i,k))
      call q(ts=b2(i,i,k),ps=b3(i,i,k),r=b1(1:i,i:1,1:2))
      call q(ps=b3(i,i,k),ts=b2(i,i,k),r=b1(1:i,i:1,1:2))
      call q(ps=b3(i,i,k),r =b1(1:i,i:1,1:2),ts=b2(i,i,k))
      js1=0;js2=1
      call q(       r =b1(1:i,i:1,1:2),ps=b3(i,i,k))
      call q(       ps=b3(i,i,k),r=b1(1:i,i:1,1:2))
      js1=1;js2=0
      call q(       r =b1(1:i,i:1,1:2),ts=b2(i,i,k))
      call q(       ts=b2(i,i,k),r=b1(1:i,i:1,1:2))
      js1=0;js2=0
      call q(              r=b1(1:i,i:1,1:2))
      js1=1;js2=1
      call q(r =b1(1:1,1:1,1:2:1)(1:1),
     1       ts=b2(1,1,2)(1:1),ps=b3(1,1,2)(1:1))
      call q(r =b1(1:1,1:1,1:2:1)(1:1),
     1       ps=b3(1,1,2)(1:1),ts=b2(1,1,2)(1:1))
      call q(ts=b2(1,1,2)(1:1),
     1       r =b1(1:1,1:1,1:2:1)(1:1),ps=b3(1,1,2)(1:1))
      call q(ts=b2(1,1,2)(1:1),
     1       ps=b3(1,1,2)(1:1),r=b1(1:1,1:1,1:2:1)(1:1))
      call q(ps=b3(1,1,2)(1:1),
     1       ts=b2(1,1,2)(1:1),r=b1(1:1,1:1,1:2:1)(1:1))
      call q(ps=b3(1,1,2)(1:1),
     1       r =b1(1:1,1:1,1:2:1)(1:1),ts=b2(1,1,2)(1:1))
      js1=0;js2=1
      call q(       r =b1(1:1,1:1,1:2:1)(1:1),ps=b3(1,1,2)(1:1))
      call q(       ps=b3(1,1,2)(1:1),r=b1(1:1,1:1,1:2:1)(1:1))
      js1=1;js2=0
      call q(       r =b1(1:1,1:1,1:2:1)(1:1),ts=b2(1,1,2)(1:1))
      call q(       ts=b2(1,1,2)(1:1),r=b1(1:1,1:1,1:2:1)(1:1))
      js1=0;js2=0
      call q(              r=b1(1:1,1:1,1:2:1)(1:1))
      js1=1;js2=1
      call q(r =b1(iv,iv,ik)(1:i),ts=b2(i,i,k)(1:i),ps=b3(i,i,k)(1:i))
      call q(r =b1(iv,iv,ik)(1:i),ps=b3(i,i,k)(1:i),ts=b2(i,i,k)(1:i))
      call q(ts=b2(i,i,k)(1:i),r =b1(iv,iv,ik)(1:i),ps=b3(i,i,k)(1:i))
      call q(ts=b2(i,i,k)(1:i),ps=b3(i,i,k)(1:i),r=b1(iv,iv,ik)(1:i))
      call q(ps=b3(i,i,k)(1:i),ts=b2(i,i,k)(1:i),r=b1(iv,iv,ik)(1:i))
      call q(ps=b3(i,i,k)(1:i),r =b1(iv,iv,ik)(1:i),ts=b2(i,i,k)(1:i))
      js1=0;js2=1
      call q(       r =b1(iv,iv,ik)(1:i),ps=b3(i,i,k)(1:i))
      call q(       ps=b3(i,i,k)(1:i),r=b1(iv,iv,ik)(1:i))
      js1=1;js2=0
      call q(       r =b1(iv,iv,ik)(1:i),ts=b2(i,i,k)(1:i))
      call q(       ts=b2(i,i,k)(1:i),r=b1(iv,iv,ik)(1:i))
      js1=0;js2=0
      call q(              r=b1(iv,iv,ik)(1:i))
      end do;end do
      end

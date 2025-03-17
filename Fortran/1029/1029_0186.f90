      integer,parameter::n=5
      integer::a(n),b(n),c(n),d(n)
      logical::l1(n),l2(n),l3(n),l4(n)

      a=(/1,1,1,1,1/)
      b=(/1,1,1,1,0/)
      c=(/1,1,1,1,1/)
      d=(/1,1,1,1,0/)
      call sub0(a,l1,n)
      call sub0(b,l2,n)
      call sub0(c,l3,n)
      call sub0(d,l4,n)
      call sub1(l1,l2,l3,l4,n)
     print *,'pass'
    end

    subroutine sub0(a,l,n)
     integer::a(n)
     logical::l(n)
     where(a==1)
       l=.true.
     elsewhere
       l=.false.
     endwhere
    end

    subroutine sub1(l1,l2,l3,l4,n)
      logical::l1(n),l2(n),l3(n),l4(n)

      i=1
      do while( (l1(i).and.l2(i)).or.&
                (l3(i).and.l4(i)) )
        if (i.eq.5) write(6,*) "NG"
        i=i+1
      enddo
    end

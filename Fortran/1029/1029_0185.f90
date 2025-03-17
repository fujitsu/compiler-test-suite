      integer,parameter::n=5
      integer::a(n),b(n),c(n),d(n)

      a=(/1,1,1,1,1/)
      b=(/1,1,1,1,0/)
      c=(/1,1,1,1,1/)
      d=(/1,1,1,1,0/)
      call sub(a,b,c,d,n)
     print *,'pass'
    end

    subroutine sub(a,b,c,d,n)
      integer::a(n),b(n),c(n),d(n)

      i=1
      do while( (a(i).eq.1.and.b(i).eq.1).or.&
                (c(i).eq.1.and.d(i).eq.1) )
        if (i.eq.5) write(6,*) "NG"
        i=i+1
      enddo
    end

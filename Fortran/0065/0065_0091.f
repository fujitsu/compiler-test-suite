c
      program comb1
      integer*4 a(5)/5*20/
      integer*1 b(5)/5*20/
      print *,'*** comb2 begin ***'
      call suba(a,5,0,0)
      call subb(b,5,0,0)
      print *,'*** comb2 end   ***'
      end

      subroutine suba(a,n,isca,iscb)
      integer*4 a(n)
      integer*4 n,isca,iscb
      integer*2 i,j,intgen,isc1,isc2
      isc1=isca
      isc2=iscb
      do i=1,n
        j=intgen(i)
        a(j+isc1)=a(isc2+j)-10
      enddo
      call testa(a,n,10)
      return
      end

      subroutine subb(a,n,isca,iscb)
      integer*1 a(n)
      integer*4 n,isca,iscb
      integer*2 i,j,intgen,isc1,isc2
      isc1=isca
      isc2=iscb
      do i=1,n
        j=intgen(i)
        a(j+isc1)=a(isc2+j)+10
      enddo
      call testb(a,n,30)
      return
      end
         
      subroutine testa(a,n,ians)
      integer*4 a(n)
      k=0 
      do i=1,n
        if(a(i).ne.ians) k=k+1
      enddo
      if(k.eq.0)then
        print *,'*** case-1 : OK ***' 
      else
        print *,'*** case-1 : NG ***'   
      endif
      return
      end

      subroutine testb(a,n,ians)
      integer*1 a(n)
      k=0 
      do i=1,n
        if(a(i).ne.ians) k=k+1
      enddo
      if(k.eq.0)then
        print *,'*** case-2 : OK ***' 
      else
        print *,'*** case-2 : NG ***'   
      endif
      return
      end

      integer*2 function intgen(i)
      integer*2 i
      intgen=i
      return
      end

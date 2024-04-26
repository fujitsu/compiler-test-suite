      character c(20)*1,xxx*10
      logical*4 l
      data xxx/'hadk1asdk9'/
      data c/'a','b','c','d','e','f','g','h','i','j',
     1       'k','l','m','n','o','p','q','r','s','t'/
      do 10 i=1,20
        n=ichar(c(i))
        write(6,*) ' ichar=',n
 10   continue
      do 20 i=1,20
        n=len(xxx)
        idx=index(xxx,c(i))
        write(6,*) n,idx
 20   continue
      do 30 i=1,10
        l=lge(c(i),xxx(i:i))
        write(6,*) l
 30   continue
      stop
      end

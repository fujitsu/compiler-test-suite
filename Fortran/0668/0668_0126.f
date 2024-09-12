      program main
      integer * 4 i4a00a(20,20),i4a00b(20),i4a00c(20)
      real    * 4 r4a00a(20,20),r4a00b(20),r4a00c(20)
      real    * 8 r8a00a(20,20),r8a00b(20),r8a00c(20)
      data nn,mm/1,20/
      do 1 j=nn,mm,1
      do 1 i=nn,mm,1
        i4a00a(i,j)=i
        i4a00b(i)=i
        i4a00c(i)=i
        r4a00a(i,j)=real(i4a00a(i,j))
        r4a00b(i)=real(i4a00b(i))
        r4a00c(i)=real(i4a00c(i))
        r8a00a(i,j)=real(i4a00a(i,j))
        r8a00b(i)=real(i4a00b(i))
        r8a00c(i)=real(i4a00c(i))
1     continue
      do 100 i001=1,mm
        call sub(n1,n2,n3)
        do 200 i002=n1,n2,n3
          if ((i4a00a(1,1).gt.0).and.(i4a00a(2,2).gt.0)
     +       .and.(i4a00a(3,1).gt.0)) then
            if((i4a00b(i002).ne.i4a00c(i002))
     +        .or.(i4a00b(i002).gt.0).or.(i4a00b(i001).gt.0)) then
               r4a00a(i002,i001)=r8a00a(i002,i001)+real(i4a00c(i002))
                goto 200
            endif
          endif
200     continue
        i4s00a = 0
        do 300 i003=1,20,1
          if ((i003.lt.10).or.(i003.gt.5)) then
            goto 300
          elseif ((i003.eq.1).or.(i003.eq.2).or.(i003.eq.3)) then
            i4s00a = i4s00a + 1
          endif
300     continue
100   continue
        write(6,*) '## ##'
        write(6,900) i4s00a
        write(6,901) i4a00a,i4a00b,i4a00c
        write(6,902) r4a00a,r4a00b,r4a00c
        write(6,902) r8a00a,r8a00b,r8a00c
900     format(1h0,i10)
901     format(1h0,5i10)
902     format(1h0,5f13.4)
        stop
        end
        subroutine sub(n1,n2,n3)
        integer* 4 n1,n2,n3
        n1=1
        n2=20
        n3=1
        return
        end

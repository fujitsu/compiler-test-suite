      program main
      integer idim(1000)
      character*10 init,sub1
      write(6,*) init(idim)//sub1(idim)
      stop
      end
      character*10 function sub1(idim)
      character*10 init
      integer idim(1000)
      do 1 i=1,1000
        idim(i)=idim(i)+1
1     continue
      sub1=' ok '
      return
      entry init(idim)
      do 2 i=1,1000
        idim(i)=0
2     continue
      init=' test '
      return
      end

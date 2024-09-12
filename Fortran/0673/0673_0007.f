         character*20 a(4),b(4)
         data a(1)/'12345678901234567890'/
         data a(2)/'abcdefghijklmnopqrst'/
         data a(3)/'zzzzfffffggghhhhhfff'/
         data a(4)/'44444466666666777777'/
         write(6,*) '         start  '
         open(10,file='ioct018.f01',status='new')
         open(20,file='ioct018.f02',status='new')
         close(10,status='keep')
         close(20,status='keep')
         open(10,file='ioct018.f01',status='old',access='sequential',
     1    recl=40)
         write(10,100) a(1)
         write(10,100) a(2)
         rewind 10
         i=1
  50     read(10,100,end=199) b(i)
         if(a(i).eq.b(i)) go to 60
         write(6,*) ' **error** (',i,') ','read= ',b(i),' comp ',a(i)
         i=i+1
         go to 50
  60     write(6,*) ' ***ok*** test no ',i
         i=i+1
         go to 50
 199     continue
 100     format(a)
         open(20)
         write(20,100) a(1)
         write(20,100) a(2)
         close(20,status='delete')
         open(20,file='ioct018.f02',status='old',access='sequential',
     1    recl=40)
         write(20,100) a(3)
         write(20,100) a(4)
         rewind 20
         i=3
  70     read(20,100,end=299) b(i)
         if(a(i).eq.b(i)) go to 90
         write(6,*) ' **error** (',i,') ','read= ',b(i),' comp ',a(i)
         i=i+1
         go to 70
  90     write(6,*) ' ***ok*** test no ',i
         i=i+1
         go to 70
 299     continue
         close(10,status='delete')
         close(20,status='delete')
         write(6,*) ' test          end   '
         stop ' test         end '
         end

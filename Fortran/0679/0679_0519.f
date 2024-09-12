      program main
       integer * 4 i4a(201),i4b(201),i4c(201)
       real    * 4 r4a(201),r4b(201),r4c(201)
       real    * 8 r8a(201),r8b(201),r8c(201)
       integer  n/100/

      do 99 i=1,201
       i4a(i) = 1
       i4b(i) = 1
       i4c(i) = 1
       r4a(i) = 1
       r4b(i) = 1
       r4c(i) = 1
       r8a(i) = 1
       r8b(i) = 1
       r8c(i) = 1
 99   continue

      do 1 i=2,n
        i4a(i)= i4a(i-1)*i4b(i)+i4c(i)
        r4a(i)= r4a(i-1)*r4b(i)+r4c(i)
        r8a(i)= r8a(i-1)*r8b(i)+r8c(i)
 1    continue
        write(6,*) 'no-1',i4a,r4a,r8a

      do 2 i=2,n
        i4a(i)= i4a(i-1)*i4b(i)+i4c(i)
        r4a(i)= r4a(i-1)*r4b(i)+r4c(i)
        r8a(i)= r8a(i-1)*r8b(i)+r8c(i)
 2    continue
        write(6,*) 'no-2',i4a,r4a,r8a

      do 3 i=2,n
        i4a(i)= i4a(i-1)*i4b(i)+i4c(i)
        r4a(i)= r4a(i-1)*r4b(i)+r4c(i)
        r8a(i)= r8a(i-1)*r8b(i)+r8c(i)
 3    continue
        write(6,*) 'no-3',i4a,r4a,r8a
      end

      write(6,*) ' ***                 *****'
      open(5,file='data053.f01',status='new')
      write(5,100) 200,300
 100  format(70x,i3,i3)
      rewind 5
      read(5,200) i1,i2
 200  format(70x,i3,i3)
      close(5,status='keep')
      open(6,file='data053.f01',status='old')
      read(6,200) ii1,ii2
      close(6,status='delete')
      open(6,file='data053.f02',status='new')
      if(i1.eq.ii1.and.i2.eq.ii2)  goto 444
      write(6,*) ' *** test(1) ng ng ng ***'
      goto 555
 444  if(ii1.eq.200.and.ii2.eq.300) goto 666
      write(6,*) ' *** test(2) ng ng ng ***'
      goto 555
 666  write(6,*) ' *** test ok ok ok ended ***'
 555  close(6,status='keep')
      end

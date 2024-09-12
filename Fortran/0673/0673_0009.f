       implicit character*4(i-l)
       character*16 ch161,ch162,ch163,ch164
       character*16 ch261,ch262,ch263,ch264
       character*8 ch81,ch82
       write(6,*) '                  **'
       write(1) '0000000000000000'
       write(1) '1111111111111111'
       write(1) '2222222222222222'
       write(1) '3333333333333333'
       write(1) '44444444'
       write(1) '5555555555555555'
       write(1) '6666666666666666'
       write(1) '7777777777777777'
       write(1) '8888888888888888'
       write(1) '99999999'
       write(6,*) ' **ok** data write end'
       rewind 1
       write(6,*) ' **ok** rewind end'
       read(1) i1,i2,i3,i4
       ch161=i1//i2//i3//i4
       read(1) i1,i2,i3,i4
       ch162=i1//i2//i3//i4
       read(1) j1,j2,j3,j4
       ch163=j1//j2//j3//j4
       read(1) k1,k2,k3,k4
       ch164=k1//k2//k3//k4
       read(1) l1,l2
       ch81=l1//l2
       if(ch161.ne.'0000000000000000') goto  1
       if(ch162.ne.'1111111111111111') goto  1
       if(ch163.ne.'2222222222222222') goto  1
       if(ch164.ne.'3333333333333333') goto  1
       if(ch81.ne.'44444444') goto  1
       write(6,*) ' **ok** rewind -> read end '
       goto 11
  1    continue
       write(6,*) ' **ng** rewind -> read end '
  11   continue
       backspace 1
       backspace 1
       backspace 1
       backspace 1
       backspace 1
       write(6,*) ' **ok** backspace end'
       i1=' '
       i2=' '
       i3=' '
       i4=' '
       j1=' '
       j2=' '
       j3=' '
       j4=' '
       k1=' '
       k2=' '
       k3=' '
       k4=' '
       l1=' '
       l2=' '
       read(1) i1,i2,i3,i4
       ch261=i1//i2//i3//i4
       read(1) i1,i2,i3,i4
       ch262=i1//i2//i3//i4
       read(1) j1,j2,j3,j4
       ch263=j1//j2//j3//j4
       read(1) k1,k2,k3,k4
       ch264=k1//k2//k3//k4
       read(1) l1,l2
       ch82=l1//l2
       if(ch261.ne.'0000000000000000') goto  2
       if(ch262.ne.'1111111111111111') goto  2
       if(ch263.ne.'2222222222222222') goto  2
       if(ch264.ne.'3333333333333333') goto  2
       if(ch82.ne.'44444444') goto  2
       write(6,*) ' **ok** backspace -> read end '
       goto 12
   2   continue
       write(6,*) ' **ng** backspace -> read end '
  12   continue
       read(1) i11,i22,i33,i44
       ch161=i11//i22//i33//i44
       read(1) i11,i22,i33,i44
       ch162=i11//i22//i33//i44
       read(1) j11,j22,j33,j44
       ch163=j11//j22//j33//j44
       read(1) k11,k22,k33,k44
       ch164=k11//k22//k33//k44
       read(1) l11,l22
       ch81=l11//l22
       if(ch161.ne.'5555555555555555') goto  3
       if(ch162.ne.'6666666666666666') goto  3
       if(ch163.ne.'7777777777777777') goto  3
       if(ch164.ne.'8888888888888888') goto  3
       if(ch81.ne.'99999999') goto  3
       write(6,*) ' **ok** read -> read end '
       goto 13
  3    continue
       write(6,*) ' **ng** read -> read end '
  13   continue
       backspace 1
       backspace 1
       backspace 1
       backspace 1
       backspace 1
       write(6,*) ' **ok** backspace end'
       i11=' '
       i22=' '
       i33=' '
       i44=' '
       j11=' '
       j22=' '
       j33=' '
       j44=' '
       k11=' '
       k22=' '
       k33=' '
       k44=' '
       l11=' '
       l22=' '
       read(1) i11,i22,i33,i44
       ch261=i11//i22//i33//i44
       read(1) i11,i22,i33,i44
       ch262=i11//i22//i33//i44
       read(1) j11,j22,j33,j44
       ch263=j11//j22//j33//j44
       read(1) k11,k22,k33,k44
       ch264=k11//k22//k33//k44
       read(1) l11,l22
       ch82=l11//l22
       if(ch261.ne.'5555555555555555') goto  4
       if(ch262.ne.'6666666666666666') goto  4
       if(ch263.ne.'7777777777777777') goto  4
       if(ch264.ne.'8888888888888888') goto  4
       if(ch82.ne.'99999999') goto  4
       write(6,*) ' **ok** backspace -> read end '
       goto 14
   4   continue
       write(6,*) ' **ng** backspace -> read end '
  14   continue
       stop
       end

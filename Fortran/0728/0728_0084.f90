 call s1
 print *,'pass'
 end
 subroutine s1
 integer j(9)
 do i=-1,1
   j=0
   call ss1
   call ss2
   call ss3
   call ss4
 end do
 call chk
 contains
  subroutine ss4
  ii=1
   if (i)101,102,103
103 j(ii+2)=1
   goto 104
101 j(ii)=1
   goto 104
102 j(ii+1)=1
   goto 104
104 continue
  ii=ii+3
   if (i)111,111,112
112 j(ii+1)=1
   goto 114
111 j(ii)=1
   goto 114
114 continue
  ii=ii+3
   if (i)121,122,122
122 j(ii+1)=1
   goto 124
121 j(ii)=1
   goto 124
124 continue
   write(1,*) j
end subroutine
  subroutine ss3
  ii=1
   if (i)101,102,103
102 j(ii+1)=1
   goto 104
101 j(ii)=1
   goto 104
103 j(ii+2)=1
   goto 104
104 continue
  ii=ii+3
   if (i)111,111,112
111 j(ii)=1
   goto 114
112 j(ii+1)=1
   goto 114
114 continue
  ii=ii+3
   if (i)121,122,122
122 j(ii+1)=1
   goto 124
121 j(ii)=1
   goto 124
124 continue
   write(1,*) j
end subroutine
  subroutine ss2
  ii=1
   if (i)101,102,103
901 continue
101 j(ii)=1
   goto 104
102 j(ii+1)=1
   goto 104
103 j(ii+2)=1
   goto 104
104 continue
  ii=ii+3
   if (i)111,111,112
902 continue
111 j(ii)=1
   goto 114
112 j(ii+1)=1
   goto 114
114 continue
  ii=ii+3
   if (i)121,122,122
903 continue
121 j(ii)=1
   goto 124
122 j(ii+1)=1
   goto 124
124 continue
   write(1,*) j
end subroutine
  subroutine ss1
  ii=1
   if (i)101,102,103
101 j(ii)=1
   goto 104
102 j(ii+1)=1
   goto 104
103 j(ii+2)=1
   goto 104
104 continue
  ii=ii+3
   if (i)111,111,112
111 j(ii)=1
   goto 114
112 j(ii+1)=1
   goto 114
114 continue
  ii=ii+3
   if (i)121,122,122
121 j(ii)=1
   goto 124
122 j(ii+1)=1
   goto 124
124 continue
   write(1,*) j
end subroutine
end
subroutine chk
integer h(12,9),hh(9)
h(01,:)=(/1,0,0,1,0,0,1,0,0/)
h(02,:)=(/1,0,0,1,0,0,1,0,0/)
h(03,:)=(/1,0,0,1,0,0,1,0,0/)
h(04,:)=(/1,0,0,1,0,0,1,0,0/)
h(05,:)=(/0,1,0,1,0,0,0,1,0/)
h(06,:)=(/0,1,0,1,0,0,0,1,0/)
h(07,:)=(/0,1,0,1,0,0,0,1,0/)
h(08,:)=(/0,1,0,1,0,0,0,1,0/)
h(09,:)=(/0,0,1,0,1,0,0,1,0/)
h(10,:)=(/0,0,1,0,1,0,0,1,0/)
h(11,:)=(/0,0,1,0,1,0,0,1,0/)
h(12,:)=(/0,0,1,0,1,0,0,1,0/)
rewind 1
do k=1,12
 read(1,*) hh
 if (any(hh/=h(k,:)))write(6,*) "NG"
end do
end

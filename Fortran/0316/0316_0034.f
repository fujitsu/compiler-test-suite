      integer  a(50)
      integer  i(10), j(10), k(10), m(10), n(10)
      parameter (i=(/ 1, 2, 3, 4, 5, 6, 7, 8, 9,10/) )
      parameter (j=(/11,12,13,14,15,16,17,18,19,20/) )
      parameter (k=(/21,22,23,24,25,26,27,28,29,30/) )
      parameter (m=(/31,32,33,34,35,36,37,38,39,40/) )
      parameter (n=(/41,42,43,44,45,46,47,48,49,50/) )
      parameter (a=(/ i,j,k,m,n /) )
      do ii=1,50
        if (a(ii).ne.ii) then
           print *,'?? NG ??'
           stop
        endif
      enddo
   
      print *,'** OK **'
      end

      real x(10,10)
      DO    290    i = 1,10
      DO    290    j = 1,10
      X(I,J) = i
  290 CONTINUE
      a=1
      m=1
      c=10
      o=10
      call sub1(a,m,c,o)
      call sub2(a,m,c,o)
      call sub3(a,m,c,o)
      call sub4(a,m,c,o)
      call sub5(a,m,c,o)
      call sub6(a,m,c,o)
      if(x(1,1).ne.1) then
	print *,"***** NG *****"
      endif
      if(x(1,10).ne.1) then
	print *,"***** NG *****"
      endif
      if(x(10,1).ne.10) then
	print *,"***** NG *****"
      endif
      if(x(10,10).ne.10) then
	print *,"***** NG *****"
      endif
      if(x(7,8).ne.7) then
	print *,"***** NG *****"
      endif
      print *,"***** OK *****"
      END

      subroutine sub1(a,m,c,o)
      real x(10,10)
      DO    300    i = 1,10
      DO    300    j = a,c
      X(I,J) = i
  300 CONTINUE
      if(x(1,1).ne.1) then
	print *,"***** NG1 *****"
      endif
      if(x(1,10).ne.1) then
	print *,"***** NG2 *****"
      endif
      if(x(10,1).ne.10) then
	print *,"***** NG3 *****"
      endif
      if(x(10,10).ne.10) then
	print *,"***** NG4 *****"
      endif
      if(x(7,8).ne.7) then
	print *,"***** NG5 *****"
      endif
      print *,"***** OK *****"
      return
      END

      subroutine sub2(a,m,c,o)
      real x(10,10)
      DO    300    i = 1,10
      DO    300    j = a,10
      X(I,J) = i
  300 CONTINUE
      if(x(1,1).ne.1) then
	print *,"***** NG1 *****"
      endif
      if(x(1,10).ne.1) then
	print *,"***** NG2 *****"
      endif
      if(x(10,1).ne.10) then
	print *,"***** NG3 *****"
      endif
      if(x(10,10).ne.10) then
	print *,"***** NG4 *****"
      endif
      if(x(7,8).ne.7) then
	print *,"***** NG5 *****"
      endif
      print *,"***** OK *****"
      return
      END

      subroutine sub3(a,m,c,o)
      real x(10,10)
      DO    300    i = 1,10
      DO    300    j = 1,c
      X(I,J) = i
  300 CONTINUE
      if(x(1,1).ne.1) then
	print *,"***** NG1 *****"
      endif
      if(x(1,10).ne.1) then
	print *,"***** NG2 *****"
      endif
      if(x(10,1).ne.10) then
	print *,"***** NG3 *****"
      endif
      if(x(10,10).ne.10) then
	print *,"***** NG4 *****"
      endif
      if(x(7,8).ne.7) then
	print *,"***** NG5 *****"
      endif
      print *,"***** OK *****"
      return
      END

      subroutine sub4(a,m,c,o)
      real x(10,10)
      DO    300    i = a,o
      DO    300    j = m,c
      X(I,J) = i
  300 CONTINUE
      if(x(1,1).ne.1) then
	print *,"***** NG1 *****"
      endif
      if(x(1,10).ne.1) then
	print *,"***** NG2 *****"
      endif
      if(x(10,1).ne.10) then
	print *,"***** NG3 *****"
      endif
      if(x(10,10).ne.10) then
	print *,"***** NG4 *****"
      endif
      if(x(7,8).ne.7) then
	print *,"***** NG5 *****"
      endif
      print *,"***** OK *****"
      return
      END

      subroutine sub5(a,m,c,o)
      real x(10,10)
      DO    300    i = 1,c
      DO    300    j = a,o
      X(I,J) = i
  300 CONTINUE
      if(x(1,1).ne.1) then
	print *,"***** NG1 *****"
      endif
      if(x(1,10).ne.1) then
	print *,"***** NG2 *****"
      endif
      if(x(10,1).ne.10) then
	print *,"***** NG3 *****"
      endif
      if(x(10,10).ne.10) then
	print *,"***** NG4 *****"
      endif
      if(x(7,8).ne.7) then
	print *,"***** NG5 *****"
      endif
      print *,"***** OK *****"
      return
      END

      subroutine sub6(a,m,c,o)
      real x(10,10)
      DO    300    i = a,10
      DO    300    j = m,o
      X(I,J) = i
  300 CONTINUE
      if(x(1,1).ne.1) then
	print *,"***** NG1 *****"
      endif
      if(x(1,10).ne.1) then
	print *,"***** NG2 *****"
      endif
      if(x(10,1).ne.10) then
	print *,"***** NG3 *****"
      endif
      if(x(10,10).ne.10) then
	print *,"***** NG4 *****"
      endif
      if(x(7,8).ne.7) then
	print *,"***** NG5 *****"
      endif
      print *,"***** OK *****"
      return
      END

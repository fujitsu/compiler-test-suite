      real x(10,10)
      DO    290    i = 1,10
      DO    290    j = 1,10
      X(I,J) = i
  290 CONTINUE
      l=1
      m=1
      n=10
      o=10
      call sub1(l,m,n,o)
      call sub2(l,m,n,o)
      call sub3(l,m,n,o)
      call sub4(l,m,n,o)
      call sub5(l,m,n,o)
      call sub6(l,m,n,o)
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

      subroutine sub1(l,m,n,o)
      real x(10,10)
      DO    300    i = 1,10
      DO    300    j = l,n
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

      subroutine sub2(l,m,n,o)
      real x(10,10)
      DO    300    i = 1,10
      DO    300    j = l,10
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

      subroutine sub3(l,m,n,o)
      real x(10,10)
      DO    300    i = 1,10
      DO    300    j = 1,n
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

      subroutine sub4(l,m,n,o)
      real x(10,10)
      DO    300    i = l,o
      DO    300    j = m,n
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

      subroutine sub5(l,m,n,o)
      real x(10,10)
      DO    300    i = 1,n
      DO    300    j = l,o
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

      subroutine sub6(l,m,n,o)
      real x(10,10)
      DO    300    i = l,10
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

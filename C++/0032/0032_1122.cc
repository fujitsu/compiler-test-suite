#include <stdio.h>
class ozBTreeImpl {
public:
  ozBTreeImpl(unsigned int);
  ozBTreeImpl();
};
template <class T> class ozBTree : public ozBTreeImpl {
public:
	ozBTree() : ozBTreeImpl() {}
	ozBTree(unsigned int m) : ozBTreeImpl(m) {}
};

class of_idman {
	ozBTree<int>*		oid_tree;
};

int main(){printf("ok\n");}

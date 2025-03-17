#include <iostream>
#include <cstdlib>
#include <cstdio>
#include <cstring>

class TreeNode
{
public:
  char data;
  TreeNode *left, *right;

  explicit TreeNode(char _data)
  {
    data = _data;
    left = NULL;
    right = NULL;
  }
};

class StackNode
{
public:
  TreeNode *treeNode;
  StackNode *next;

  explicit StackNode(TreeNode *_treeNode)
  {
    treeNode = _treeNode;
    next = NULL;
  }
};

class ExpressionTree
{
private:
  StackNode *top;

public:
  ExpressionTree()
  {
    top = NULL;
  }

  void clear()
  {
    top = NULL;
  }

  void push(TreeNode *ptr)
  {
    if (top == NULL) {
      top = new StackNode(ptr);
    }
    else {
      StackNode *nptr = new StackNode(ptr);
      nptr->next = top;
      top = nptr;
    }
  }

  TreeNode *pop()
  {
    if (top == NULL) {
      return NULL;
    }
    else {
      TreeNode *ptr = top->treeNode;
      top = top->next;
      return ptr;
    }
  }

  TreeNode *peek()
  {
    return top->treeNode;
  }

  void insert(char val)
  {
    if (isDigit(val)) {
      TreeNode *nptr = new TreeNode(val);
      push(nptr);
    }
    else if (isOperator(val)) {
      TreeNode *nptr = new TreeNode(val);
      nptr->left = pop();
      nptr->right = pop();
      push(nptr);
    }
    else {
      return;
    }
  }

  bool isDigit(char c)
  {
    return c >= '0' && c <= '9';
  }
  
  bool isOperator(char c)
  {
    return (c == '+' ||
	    c == '-' ||
	    c == '*' ||
	    c == '/');
  }
  
  int toDigit(char c)
  {
    return c - '0';
  }
  
  void buildTree(std::string str)
  {
    for (int i = str.length() - 1; i >= 0; --i) {
      insert(str[i]);
    }
  }
  
  double evaluate()
  {
    return evaluate(peek());
  }
  
  double evaluate(TreeNode *ptr)
  {
    if (ptr->left == NULL &&
	ptr->right == NULL) {
      return toDigit(ptr->data);
    }
    else {
      double left = evaluate(ptr->left);
      double right = evaluate(ptr->right);
      char op = ptr->data;
      
      switch(op) {
      case '+': return left + right;
      case '-': return left - right;
      case '*': return left * right;
      case '/': return left / right;
      default:  return left + right;
      }
    }
  }
};

int main()
{
  ExpressionTree et;
  std::string str1 = "+-+7*/935/82*/625";
  et.buildTree(str1);
  std::cout << et.evaluate() << std::endl;

  std::string str2 = "-+74/*322";
  et.buildTree(str2);
  std::cout << et.evaluate() << std::endl;
}

#include <stdio.h>
struct S { int mem; ~S() { mem = 0; } };
void check() noexcept(false) { throw 1; }

void test0001(unsigned long size)
{
  int array01[size];
  int array02[size];
}

void test0002(unsigned long size)
{
  int array01[size];
  {
    int array02[size];
  }
}

void test0003(unsigned long size)
{
  int array01[size];
  
}

void test0011(unsigned long size)
{
  int array01[size];
  S   array02[size];
}

void test0012(unsigned long size)
{
  int array01[size];
  {
    S array02[size];
  }
}

void test0013(unsigned long size)
{
  int array01[size];
  
}

void test0101(unsigned long size)
{
  {
    int array01[size];
    int array02[size];
  }
}

void test0102(unsigned long size)
{
  {
    int array01[size];
    {
      int array02[size];
    }
  }
}

void test0103(unsigned long size)
{
  {
    int array01[size];
  }
  int array02[size];
}

void test0111(unsigned long size)
{
  {
    int array01[size];
    S   array02[size];
  }
}

void test0112(unsigned long size)
{
  {
    int array01[size];
    {
      S array02[size];
    }
  }
}

void test0113(unsigned long size)
{
  {
    int array01[size];
  }
  S array02[size];
}

void test0201(unsigned long size)
{
  try {
    int array01[size];
    int array02[size];
    check();
  }
  catch(...) {
  }
}

void test0202(unsigned long size)
{
  try {
    int array01[size];
    {
      int array02[size];
    }
    check();
  }
  catch(...) {
  }
}

void test0203(unsigned long size)
{
  try {
    int array01[size];
    check();
  }
  catch(...) {
  }
  int array02[size];
}

void test0211(unsigned long size)
{
  try {
    int array01[size];
    S   array02[size];
    check();
  }
  catch(...) {
  }
}

void test0212(unsigned long size)
{
  try {
    int array01[size];
    {
      S array02[size];
    }
    check();
  }
  catch(...) {
  }
}

void test0213(unsigned long size)
{
  try {
    int array01[size];
    check();
  }
  catch(...) {
  }
  S array02[size];
}

void test0301(unsigned long size)
{
  try {
    check();
  }
  catch(...) {
    int array01[size];
    int array02[size];
  }
}

void test0302(unsigned long size)
{
  try {
    check();
  }
  catch(...) {
    int array01[size];
    {
      int array02[size];
    }
  }
}

void test0303(unsigned long size)
{
  try {
    check();
  }
  catch(...) {
    int array01[size];
  }
  int array02[size];
}

void test0311(unsigned long size)
{
  try {
    check();
  }
  catch(...) {
    int array01[size];
    S   array02[size];
  }
}

void test0312(unsigned long size)
{
  try {
    check();
  }
  catch(...) {
    int array01[size];
    {
      S array02[size];
    }
  }
}

void test0313(unsigned long size)
{
  try {
    check();
  }
  catch(...) {
    int array01[size];
  }
  S array02[size];
}

void test1001(unsigned long size)
{
  S   array01[size];
  int array02[size];
}

void test1002(unsigned long size)
{
  S   array01[size];
  {
    int array02[size];
  }
}

void test1003(unsigned long size)
{
  S   array01[size];
  
}

void test1011(unsigned long size)
{
  S   array01[size];
  S   array02[size];
}

void test1012(unsigned long size)
{
  S   array01[size];
  {
    S array02[size];
  }
}

void test1013(unsigned long size)
{
  S   array01[size];
  
}

void test1101(unsigned long size)
{
  {
    S   array01[size];
    int array02[size];
  }
}

void test1102(unsigned long size)
{
  {
    S   array01[size];
    {
      int array02[size];
    }
  }
}

void test1103(unsigned long size)
{
  {
    S   array01[size];
  }
  int array02[size];
}

void test1111(unsigned long size)
{
  {
    S   array01[size];
    S   array02[size];
  }
}

void test1112(unsigned long size)
{
  {
    S   array01[size];
    {
      S array02[size];
    }
  }
}

void test1113(unsigned long size)
{
  {
    S   array01[size];
  }
  S array02[size];
}

void test1201(unsigned long size)
{
  try {
    S   array01[size];
    int array02[size];
    check();
  }
  catch(...) {
  }
}

void test1202(unsigned long size)
{
  try {
    S   array01[size];
    {
      int array02[size];
    }
    check();
  }
  catch(...) {
  }
}

void test1203(unsigned long size)
{
  try {
    S   array01[size];
    check();
  }
  catch(...) {
  }
  int array02[size];
}

void test1211(unsigned long size)
{
  try {
    S   array01[size];
    S   array02[size];
    check();
  }
  catch(...) {
  }
}

void test1212(unsigned long size)
{
  try {
    S   array01[size];
    {
      S array02[size];
    }
    check();
  }
  catch(...) {
  }
}

void test1213(unsigned long size)
{
  try {
    S   array01[size];
    check();
  }
  catch(...) {
  }
  S array02[size];
}

void test1301(unsigned long size)
{
  try {
    check();
  }
  catch(...) {
    S   array01[size];
    int array02[size];
  }
}

void test1302(unsigned long size)
{
  try {
    check();
  }
  catch(...) {
    S   array01[size];
    {
      int array02[size];
    }
  }
}

void test1303(unsigned long size)
{
  try {
    check();
  }
  catch(...) {
    S   array01[size];
  }
  int array02[size];
}

void test1311(unsigned long size)
{
  try {
    check();
  }
  catch(...) {
    S   array01[size];
    S   array02[size];
  }
}

void test1312(unsigned long size)
{
  try {
    check();
  }
  catch(...) {
    S   array01[size];
    {
      S array02[size];
    }
  }
}

void test1313(unsigned long size)
{
  try {
    check();
  }
  catch(...) {
    S   array01[size];
  }
  S array02[size];
}

int main()
{
  printf("ok\n");
  return 0;
}

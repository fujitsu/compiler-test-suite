int main()
{
   static_assert([](int n){return[&n]{return++n;}();}(3) == 4);
}

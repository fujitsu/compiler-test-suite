enum [[nodiscard]] E {a,b,c};
E & fun(E e){
    return e;
};

int main()
{
    fun(a);
}

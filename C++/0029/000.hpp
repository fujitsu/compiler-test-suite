template <class T>
class Array
{
public:
  Array();
  Array(int len);
  Array(const Array<T>& A);
  virtual ~Array();

  virtual void reset(int len);
  virtual void resize(int lne, bool copy = false);
  T& operator() (int i);
  const T& operator() (int i) const;
  virtual Array<T>& operator = (const Array<T>& other);
  virtual Array<T>& operator = (const T& value);
  int size() const;
  bool has_member(T val) const;

private:
  int len_;
  T *data_;
};

template <class T>
Array<T>::Array()
{
  len_ = 0;
  data_ = NULL;
}

template <class T>
Array<T>::Array(int len)
{
  len_ = len;
  data_ = new T[len_];
}

template <class T>
Array<T>::Array(const Array<T>& A)
{
  len_ = A.len_;
  if (A.data_ == NULL) {
    data_ = NULL;
  }
  else {
    data_ = new T[len_];
    for (int i = 0; i < len_; ++i) {
      data_[i] = A.data_[i];
    }
  }
}

template <class T>
Array<T>::~Array()
{
  if (data_ != NULL) { delete [] data_; }
}

template <class T>
void Array<T>::reset(int len)
{
  if (len_ == len) {
    return;
  }
  else {
    len_ = len;

    if (data_ != NULL) {
      delete [] data_;
    }

    if (len_ > 0) {
      data_ = new T[len_];
    }
    else {
      data_ = NULL;
      len_ = 0;
    }
  }
}

template <class T>
void Array<T>::resize(int len, bool copy)
{
  if (len_ == len) {
    return;
  }
  else {
    len_ = len;

    if (len_ > 0) {
      if (copy && data_ != NULL) {
	Array<T> temp(*this);

	delete [] data_;
	data_ = new T[len_];

	for (int i = 0; i < len_; ++i) {
	  if (i < temp.size()) {
	    data_[i] = temp.data_[i];
	  }
	}
      }
      else {
	if (data_ != NULL) { delete [] data_; }
	data_ = new T[len_];
      }
    }
    else {
      data_ = NULL;
      len_ = 0;
    }
  }
}

template <class T>
T& Array<T>::operator() (int i)
{
  return data_[i];
}

template <class T>
Array<T>& Array<T>::operator = (const Array<T>& other)
{
  if (data_ == NULL) {
    len_ = other.len_;
    if (other.data_ == NULL) {
      data_ = NULL;
    }
    else {
      data_ = new T[len_];
    }
  }

  for (int i = 0; i < len_; ++i) {
    data_[i] = other.data_[i];
  }

  return *this;
}

template <class T>
Array<T>& Array<T>::operator = (const T& value)
{
  for (int i = 0; i < len_; ++i) {
    data_[i] = value;
  }
  return *this;
}

template <class T>
int Array<T>::size() const
{
  return len_;
}

template <class T>
bool Array<T>::has_member(T val) const
{
  bool retval = false;

  for (int i = 0; i < len_; ++i) {
    if (val == data_[i]) {
      retval = true;
    }
  }

  return retval;
}

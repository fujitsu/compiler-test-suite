#include <cstdlib>
#include <string>
#include <vector>
#include <algorithm>

#include "000.hpp"

namespace MyObserver
{
  template <typename T>
  class BaseObserver
  {
  private:
    virtual bool shouldNotify(const std::string& key) = 0;
    virtual void update(T* sender, const std::string& key) = 0;

    template <typename F>
    friend class Observable;
  };

  template <typename T, const std::string&... keys>
  class Observer: public BaseObserver<T>
  {
  public:
    virtual void update(T* sender, const std::string& key) = 0;

  private:
    std::vector<std::string> observeKeys = { keys... };
    
    bool shouldNotify(const std::string& key)
    {
      return (std::find(observeKeys.begin(),
			observeKeys.end(),
			key)
	      != observeKeys.end());
    }
  };

  template <typename T>
  class Observable
  {
  public:
    void addObserver(BaseObserver<T> *observer)
    {
      m_observers.push_back(observer);
    }

    void removeObserver(BaseObserver<T> *observer)
    {
      auto it = std::find(m_observers.begin(),
			  m_observers.end(),
			  observer);
      if (it != m_observers.end()) {
	m_observers.erase(it);
      }
    }

    void notify(const std::string& key)
    {
      for (const auto& o: m_observers) {
	if (o->shouldNotify(key)) {
	  o->update(static_cast<T*>(this), key);
	}
      }
    }
    
  private:
    std::vector<BaseObserver<T>*> m_observers;
  };
}

struct Sender: public MyObserver::Observable<Sender>
{
  static const std::string key1;
  static const std::string key2;

  void doSomething()
  {
    notify(key1);
    notify(key2);
  }
};

const std::string Sender::key1 = "key1";
const std::string Sender::key2 = "key2";

struct Observer: public MyObserver::Observer<Sender, Sender::key1>
{
  Observer()
  {
    auto sender = new Sender();
    sender->addObserver(this);
    sender->doSomething();
  }

  void update(Sender *sender, const std::string& key) override
  {
    std::puts("OK");
  }
};

void sub1()
{
  Observer();
}

template<typename T>
class Node
{
public:
  Node();
  Node(T,Node<T>*);
  Node<T>* next;
  T data;
};

template<typename T>
Node<T>::Node()
  : next()
{
}

template<typename T>
Node<T>::Node(T d, Node<T>* n)
  : data(d), next(n)
{
}

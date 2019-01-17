class Node<T>{
  static int typeOrgan = 10000;
  static int typeMember = 10001;

  bool expand;
  int depth;
  int type;
  int nodeId;
  int fatherId;
  T object;

  Node(
      this.expand,
      this.depth,
      this.type,
      this.nodeId,
      this.fatherId,
      this.object,
      );

}
class Organ{
  List<Organ> subOrgans;
  List<Member> members;
  String name;

  Organ(
      this.subOrgans,
      this.members,
      this.name
      );
}

class Member{
  String name;

  Member(
      this.name
      );
}
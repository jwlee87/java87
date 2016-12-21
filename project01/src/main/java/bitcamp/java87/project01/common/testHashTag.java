package bitcamp.java87.project01.common;

public class testHashTag {
  
  public testHashTag() {
    // TODO Auto-generated constructor stub
  }
  
  public static void main(String[] args) {
    
    String hashTagString = "#나이키 #아이다스,나는   #퓨마 나오면안돼#뉴발란스.천재#데상트";
    System.out.println("오리지널 : "+hashTagString);
    HashTag ht = new HashTag();
    ht.parsing(hashTagString);
    
  }
  
}

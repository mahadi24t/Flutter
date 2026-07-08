// ১. Class (নকশা) - বাজার থেকে কেনা বেসিক রোবট
class BasicRobot {
  // Method (কাজ)
  void speak() {
    print("হ্যালো, আমি একটি সাধারণ রোবট।");
  }
}

// ২. Inheritance (extends) - বেসিক রোবট থেকে ডিটেকটিভ রোবট বানানো
class DetectiveRobot extends BasicRobot {
  
  // Variable (বৈশিষ্ট্য)
  String robotName = "AI Detective Beta";

  // ৩. Override (দাদাগিরি বা নিজের নিয়ম চাপানো)
  @override
  void speak() {
    // এখানে আমরা পুরনো কথার বদলে নতুন কথা বলাচ্ছি
    print("সাবধান! আমি $robotName, আমি ফেক নিউজ ধরতে পারি!");
  }
}

// ৪. Main Function (যেখান থেকে অ্যাপ বা কোড চলা শুরু হয়)
void main() {
  // Object (আসল রোবট তৈরি করা)
  DetectiveRobot myRobot = DetectiveRobot();
  
  // রোবটকে কথা বলতে বলা (Method কল করা)
  myRobot.speak(); 
}
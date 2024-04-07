import 'package:flutter/material.dart';
import 'package:test_ui/features/user/model/user_model.dart';

class UserProvider extends ChangeNotifier {
  UserModel activeUser = UserModel(
    fullName: "Tural Salimli",
    age: 27,
    distance: 0,
    story: false,
    dot: true,
    vip: false,
    verified: false,
    boos: true,
    image:
        "https://s3-alpha-sig.figma.com/img/3f5b/b054/59e635a0b993c98ba7e74520731577e6?Expires=1713139200&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=HbzLL1f4is3R8FsX7zTt-if40WkrBVGU5Flb5YnrsQwLfpOaec8uxro5jHeex-3PLqCszF~T1pQCdQmfjgg4bhOdiJC8UMEUpZigZLAFjom7HLEBj5dvjozJoLefgbBs8Sc-JIHRwmyb65JYo-g784kOfrISk3f0vp2BCdNd85kk1WSbkeLAc4n7QhyrM~wrgxGf2GvTP0hPYy2x-LLHIwViKCIe1rjEBEZYYNd7RIsVJOyzfRbgVJD3GX6d7hWS8Mt3FBNRKx7UvGD8Yy6cSMm2djQwRh2xDd9gO-EQB5H~WmABwR6YhyzalPXpQVxFZrffUYoR20YNthapuqtACw__",
  );
  List<UserModel> users = [
    UserModel(
      fullName: "Sevinc Alieva",
      age: 23,
      distance: 0,
      story: false,
      dot: true,
      vip: false,
      verified: true,
      image:
          "https://s3-alpha-sig.figma.com/img/af34/9ffb/0fb4e54cff1b6836618d2fbfbac3ab35?Expires=1713139200&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=gY~i~incjVC~Iy~1CXj9RVeXLvd5eKFpebihMedeFlKHgdy4qpSapt4urpGcjq893DArmCvUvL2E0RWzsV6BSmC0cI8aUNzW0YdpyDPgXxrju-xpm4DsyZEJPJzgqnlr53zd3zjdqlaLjBoZTD8w5X5tIXF5hwAvS8aWyE7tHnSSgsK6novCLJ2lJvrdvndUTyTuC28rryLenKhbbuAVc43juRPWsZSOWz72WNLsUDeXksL3TbHbzRw4CokfFWVfPeJYYMsrdY-qCi4t-f4DWmxFKoahr~G8MsyMvgReC2hfZzwHDQcxB0UetysismC2x0cfIfBJ3vzjWyv3mRZjyA__",
    ),
    UserModel(
      fullName: "Gunel M-va",
      age: 24,
      distance: 100,
      story: false,
      dot: true,
      vip: true,
      verified: false,
      image:
          "https://s3-alpha-sig.figma.com/img/b1bd/97b0/33519b7783dbe81b14527d74949ed161?Expires=1713139200&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=MN5ouKnaqFS5SRTIqqk1Y9rorfBgp8iJaj-XmrMPP-oO6jgC9tpn0xOxAumqa5MDPQWGrF0bsIUTsoX9Uc3OeDx7VzY36uWGPhHV8twumY3DBfuIyE9GhqVElwXVcgFXLhVfvaTOndoPxYaXoJRGIiVpe5une2khoJ7o1AkYzgBRssGRwWp7KcKkcE3ZXV66f8LySRq53GfiwaYy82GKaN50C~ZfQkvGND7tLp60Kb2sjJzKg4Q04qpYXoESZCs5kA1tOdol8xOPBLA~v~aEP55ycl6zgGvQXmsraQm2Sqpp9us7IYqaMYt0A5QRaUmRbv8m9p-UmAXnYGSSfkdSCw__",
    ),
    UserModel(
        fullName: "Shefeg Memmedli",
        age: 30,
        distance: 150,
        story: true,
        dot: false,
        vip: false,
        verified: false,
        image:
            "https://s3-alpha-sig.figma.com/img/ba8e/e355/b923cdcde4a731c1c8c47592cd47866f?Expires=1713139200&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=V-63vCdTPLedWwn-mnklPxpp4d7bfwaXs2Gwa0doT0-jFlY7045V2dAH4ClfKcsw7w1xsDr6I0THqVKaavF-8JuFv9GnF9iYW2Dzqi8GJ~RS5P7moUo-cS5FEJeI73lSBrHtST2MOTEWG0NCXZZ4aOB~QG68U5ESzPBIk~09glYFaYPo0V8msUKpWzDktiwCTzkYfSuZNzhQXuTPpfdGXRXHVMJX3lnK1XtEFKRaocHNJJ6iYfehdI89EdkLrlBLBDCXD~Dgf~xqtBUA8lFLxi16A0BOBx4VpO224yCihY9RMPIO5g7rqG3O9KOsSs7v7F3u8tT6qMpco9qQJVbq1A__"),
  ];
}

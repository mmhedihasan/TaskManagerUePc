import 'package:flutter/material.dart';
import 'package:taskmanager/style/style.dart';
import 'package:taskmanager/utility/utility.dart';

AppBar TaskAppBar(context,ProfileData){
  return AppBar(
    backgroundColor: Colors.blue,
    flexibleSpace: Container(
      margin: EdgeInsets.fromLTRB(10, 40, 10, 0),
      child: Row(
        children: [
          CircleAvatar(
            backgroundColor: Colors.transparent,
            radius: 24,
            child: ClipOval(
              child: Image.memory(ShowBase64Image("data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAAQABAAD/7QBsUGhvdG9zaG9wIDMuMAA4QklNBAQAAAAAAFAcAigASkZCTUQwZjAwMDc1NzAxMDAwMGIyMDIwMDAwZTQwNTAwMDA5ZDA2MDAwMDUzMDcwMDAwZDIwOTAwMDBlODBjMDAwMDJiMGQwMDAwAP/bAEMACwgICggHCwoJCg0MCw0RHBIRDw8RIhkaFBwpJCsqKCQnJy0yQDctMD0wJyc4TDk9Q0VISUgrNk9VTkZUQEdIRf/bAEMBDA0NEQ8RIRISIUUuJy5FRUVFRUVFRUVFRUVFRUVFRUVFRUVFRUVFRUVFRUVFRUVFRUVFRUVFRUVFRUVFRUVFRf/CABEIAHgAeAMBIgACEQEDEQH/xAAbAAABBQEBAAAAAAAAAAAAAAAFAAIDBAYHAf/EABkBAAIDAQAAAAAAAAAAAAAAAAIDAAEEBf/aAAwDAQACEAMQAAAA5abDWXgRHthekjHRkMSW+5wPXfXx3NJMunYjs085TUkVT1So12r3R4pObRdVfdYPQnjKz4hqodgGgLleliMmjnpsP1bo87nzOoiCDErWoYPW9zNHJJHZauInQvycK0hx2PdzfpBbQZX863I8t0edELuUyXWXiqzIzC2MWjbWcjGQ7OthykpxWHNlo6PTzm3xbcVZHCtfKL0IEUeqyu7krPB6dy4N0BU4qKk0iRjpRwS5DOepPSh6rSDLUdsEFWdRBQZvI/D79mWjKS7DpI7UvLPkXX9ldYMguZywKsGNsXqurAg1rQ6byoaSKJEhFGJuW2k7TQq6WhSwVDR5c6fA1rAco1YEfEldPx6VqkrJRdiBKBH4kam+pWv2olYeJKx//8QAKxAAAQQCAgEEAAUFAAAAAAAAAgABAwQFERITFAYQISIVICMxNCQyM0FC/9oACAEBAAEHAQDYrG/9Ntu+RmfjY3PLyljKc+bMpW3A6qZSFqTLD3g8RNkIIb9lRZSEMt3Zy/FcMPyAXFtV5up3T2P1SJz+WciP4Rc+O5WKOJn7i1oZ3FtNGMyOE4zZpQ4iyJ/jW1E23UAuEjjWl6bRqbsO2jgsCYvYxkgVozlwo+ESr1JchYJofTsaH05WdZbEvjHE42O31DkMVPFW7H9PzdHZSwRW6zS4/D9lmaOrBH+MWV0g2eZTRg2bhWZARijLLszUmcmZ6zrEnHWryFBZikHlHkKblxzwvPjueL/mRlmG3i5lE/KiKwj/ANBqk/HNXRhs2WzcqCeQ/UQNc+MtTfN/wd5b5xZvxaakQz84ZjjxWNO9WsSbPfGli9YQyioHQou+Qbni5VRfljYlhv8AFOMP19QzsxxtmXbJ6HPUyyHxdolmG3jDVz74g1TflSF7detITnTImJw8WlNbIpi/QJZSIQxal++PdsUW8ZEsW7DYuAf09Qi814PxmJsoXLIUzykmmrnkZN4408jFjeOPuj4ILygmaV4OvYuU0b6VqflVlVzIxPjumPMReGzY7JdVUmp5N2vSncyBjko5ZDma+JXJpzkie+xvTF7DyyUndjsHX44oWeHUWNJ47Ilj7VXao4wt8oabcOOTxRxC5wVHlgZ6MG3kGuHRkHWRbnYB7MbtLG9kPqCtjusoqvfWYYKUMIaDQjp3+V++xrB47O3dpt9uxUtaPTrjYoyGu8/K52pJDIXmCT6qWMuO2gI2ZgNgAReZNLpk8q7vuu9PP/rvTz7XftlaFuwZrZc4xeR9syN9igLQrsXYu1diY3ctc35cSPibtG7ntdq7l2/ClL407ra2ox5kqzROa7WJtELeYEZtqVyignOwUjYqwrEJ0K3Hkua5on2trftQ0ZyxwE7tMNe01Q2UZcXlXk9xvIVu44mx+fJpTwTiPJOy2tra2tqMnE9845ncpeDKCXt5j1mEztwd9s0sJixXZKbwOLs/tv22trab9nTf2+w8o+SIyJ1yYV2cvbsRMzp/hbX/xAAiEQACAgMAAwACAwAAAAAAAAAAAQIRAxIhECIxBBMgQlH/2gAIAQIBAT8AnH14Y9dKZ6don+ptOSFgxb7JEpQcrSNiL4OGypiTiqTHDK/7mZ6xsU5KSsjFS6zVGiZGTb85ZumkZPyG6Rhb0TkbxFkj/pWRSXS8lJuQlN37E8T1Fj9ioNdNMdsUYUKHy2QxKhVH4iT2XSONDgpcY4JO6IfPhqfF54JWaiiUONoqxiZHokV/CPeleF4//8QAIBEAAwACAgIDAQAAAAAAAAAAAAECAxESIRATFDEyUv/aAAgBAwEBPwCP12XL5s0+tsxLIk9MV2loSpLTZoqtMV8XtDpN7Yqx/wAmGVX2VEOXoqmukcmMc6XnDiTaZGDjtszJK2p80n9HrOBhvXRVPj2cRIekfHPQfHPRpjhseMeI9Y0hpDododyctjZsdlUV2VZzOY7OY2NjY2NjY2bP/8QANBAAAQMDAgIIBQIHAAAAAAAAAQACEQMSMSFBIlEQEzBCYWJxoQQgMlJjgbEUI3KRwdHw/9oACAEBAAg/Afk5dJMG3COhkpzgLoKP0FsSqRm3f5YJQblbohHCfUHF3RlDQISPQoPIPinDKtIKjpfSLnDaE6k4uOGwhSIccNhPpFsmBKeeImFJuhNMAZcdlVqud/Tor6qY66m7nshmYCLphB+sYhXxPgnu1pGNEW91qtzSVuaRQGKjf3QGHtPv0VHtaHPMScqnUDguvbcqQFRjNTBWzSvLK8FyLh7rnaV/DvksGiqMLIYQJXNrguUH3XgCjhw2W7TCJcDBDI3KkjwTi9tR7Sc+yqgCoazDpyX415QuVV650wVbqaaG9wXnI9l5V+NeUL4hg07yo/EWUcADIRpMdWy6QvBNNwBBB/Vc2LwX5CV99JAZYVyeV9lQFeVT3IROBCf9Aem17WjZsQusBITdmkkqnpDQAE462r7SUGz1qLYsCLjcMFOdg6Jz9QZTqmkYQeYhWklVQGioeFNHDziU57nHk0KqOAiCOat0G4RCOxQCO/R4qVOnNHj9UwBo5Do2OiumTnoKoxTPLZPomHHIwur4jsnsthOdKLpRqGE3QDsSqYxkLx7Aalb4hTjTRA49zsOw2Akqs02xJh0QFSpNbdppqVPBR0/tqf8AKa2w13Q0DujdWR9Thd6x+6fa33/7CNvWl5kg4GP99h3n0yG+qawPcWjIndVGfzbpvBHD+iLssMeqi0UqVo9YhXP4uHQY3T3VjJ0k6KrqG6TM9gDBCfwOOSBoU1xd+kKjTaHRJc7bAR6tm++kkBVPjGBvoIVf4oh0zGIXwz3udPeJWeyvLD4KSVujqmlH5P/EACQQAQEBAQABAwQDAQEAAAAAAAERACExQVFhEHGRoYGx8MHR/9oACAEBAAEeEEdPTOVYXTCQMOcgI61vo6aDpgEAhxqJD+/Tw/5DNdAIeF0KV+g+2PNMLrGrs6TNyPtc0J36ZSpYGeYN5HOi0a3DRLeVzML7R7u8K7TH8+Vwn7us4YzHeWxJ6NOcQ8gzm8vHWRVch5dDMOPa4sE7ji5fBpwyvfAG5x+Yy33wfJZ6IFC9mksWUDOkvQWKt+0Yz8FxIhVMjkeQ/Ovgn6qYdPThNA/RMDTUr/OgN7n3RyEmNdDLnwwpTjv8sKT2OW/v/wA7/Xkf0kcwSIvY088D1fRpmv3vxDH47QYaQqolMnyi0yL3F9tlDINJuKfGU3Gz0eiEBx6Mifd689/6Nz7GfvLRTdANH+cQeByf8yVvsfT99e+am/W7SWPg5JaAsQMVUY1K5ocAxFevF4YSl5TGBehMyHx+YGZ6FH8OKMcvZ/8AYMHHuaZo9YKhH+rFIbXvVShU5MvG6ZYXZ7KlM41z+MM+AHsPhxfKONU4gyeKEDP1Uo46hJjtQsjUHky0HyAxGd2EBsQLrPIm3OeS4oHdDHro1BGJ6hzIYMCo4qEm8lCGMfhOGXm/HLXqu761Do51MAkIlYHZBF5HE4T6IGX1S5WxEXLPUmjT1YMIRIjngEdAeebQUHdbxyhKy0ac1C8jmOcSii8mOjwgNZcIl1XzhQruB7uBWPnvcYCEPojp+jyXqZUAIXfZjkllCuGHneWfllkexwoVOAdXEwHv5LnbCtSqanTwACqMxYpdQPd3Die/h1DNE3JmYsQ3sGXiQm4IVX/WTSLmED2/JeYaCiQQHTYmi+AeHbQ8je2pu732ldrlbkc44usP5e8go9AMpFl8+SXUF0Ap69VvNYNfQDI8ikx8qoIHQpTTBVecuFdL6O9rOOOOOEHdAno7ppdpJqkc8Xga3sLRRin26YIWG7i4oSKUec508iZELLU8rnvlxUe8zi5x+g4vxuTv3oFyIjimilElVXdELilzg/8Ai4hhjgf6dSR+j//EACUQAQACAAQEBwAAAAAAAAAAAAEAESFAUXEwQYGhEFBgYZGxwf/aAAgBAQAfPxD0kqjO35K5VybhbHqkJ80dYuyhhuYh74b4B2lEEGhO1zqqsCptz4TXgFGv3AGtRGBjp+RKMWsr/9k=")),
            ),
          ),
          SizedBox(width: 10),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('${ProfileData['firstName']} ${ProfileData['lastName']}',style: Head6Text(Colors.white),),
              Text(ProfileData['email'],style: Head6Text(Colors.white,))
            ],
          )
        ],
      ),
    ),
    actions: [
      IconButton(
          onPressed: (){
            Navigator.pushNamed(context, "/taskCreate");
          },
          icon: Icon(Icons.add_circle_outline, color: Colors.white)
      ),
      IconButton(
          onPressed: () async {
            await RemoveToken();
            Navigator.pushNamedAndRemoveUntil(context, "/login", (route) => false);

          },
          icon: Icon(Icons.output, color: Colors.white)
      )
    ],

  );
}

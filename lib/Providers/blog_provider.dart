import 'package:blog_app/models/category.dart';

import '../models/blog.dart';
import 'package:flutter/material.dart';

class BlogProvider with ChangeNotifier {
  List<Blog> _blogs = [
    Blog(
      DateTime.now().toString(),
      'chili garlic instant pot noodles',
      'Are noodles the best or are noodles the best?\n\nThey are the actual best. You can build almost any type of meal around almost any type of noodles. God bless them, every one.\n\nToday I’m going to introduce you to an idea that is a Zero Thinking Required Dinner Situation. Spoiler: it includes noodles.\n\nMeet: Chili garlic brown rice noodles in the Instant Pot (affiliate link). They are sticky, with an umami flavor and a little sweetness. They are gorgeous, because we get fancy with our toppings. They are laced with a little chili garlic and speckled with red peppers and scallions and peanuts and saucy bites of chicken for those who want it and tofu/other for those who don’t.\n\nYeah. Those are the ones\n\n\nYou know how rice noodles (think Pad Thai) are usually slippery and silky and perfect for fork-twirling? I am going to tell you upfront that these are not those noodles. I mean, literally, they ARE the same noodles, but preparationally (go with it), they are not.\n\nThese noodles are STICKY.\n\nThink Spaghetti Pie type sticky. Er, maybe not THAT sticky, but think sticky enough to where you’re probably not going to be able to twirl them up nice and silky-smooth. I do love a good fork-twirl of silky Pad Thai as much as the next hungry girl, but these noodles are a whole different animal.\n\nThese noodles are thick, and dense, almost, and very saucy and very chewy and they just beg to be tangled-into with a fork. You’re like, huh? What is she talking about?\n\nAnd I’m like, here, just try it.',
      '1',
      DateTime.now(),
      Category.food,
    ),
    Blog(
      DateTime.now().toString(),
      'Build Bigger Arms with this Workout Program',
      'Ask most men why they are in the gym and you’ll hear the same answers. “I just want to lose some fat”, “I want to build some muscle”, “I want to improve my fitness”. But dig deeper and you’ll find out that most men want bigger arms. Ask most women and they’ll say that bigger arms would be off-putting but ask them if they want toned arms and you’ll probably get a different response.\n\nNo matter who you are, man or woman, you could benefit from training your arms more. But most training programs leave the arms as an afterthought. This is understandable, some lifters tend to overly-focus on arms and ignore legs or back.\n\nBut in recent years, it feels as if training arms is seen as a waste of time. Why focus on such small muscles when bigger muscles will provide greater strength gains? There are even some trainers out there who claim that training arms is pointless as chest and back exercises provide enough stimulation, and no isolation work is required.\n\nThis is understandable, but it ignores a common issue – particularly in new lifters. This is that weak biceps and triceps can prevent you from realising your potential in the bench press, or pull ups, or similar chest and back exercises.\n\n\nWhat Does a “Bigger Arms” Program Look Like?\n\nWe’re not going to create a workout program that focuses solely on arms, this would be short-sighted. We’re going to create a standard program (ideal for beginners, but still effective for experienced lifters) but put a bit more focus on arms than usual. Yes, that means you’ll still have to squat and deadlift. Those legs need loving too!\n\nThe training program is going to be a four-day plan using a push/pull protocol. The reason for this is that you can train triceps on one day and biceps/forearms the next day. This isn’t by any means the only way to train arms, but it works well and we’re using it.',
      '2',
      DateTime.now(),
      Category.health,
    ),
    Blog(
      DateTime.now().toString(),
      'How To Achieve Your Passive Income Goals in 2021 - 10 Ideas To Get You Started',
      'If you’re looking to seriously make passive income, here are some great ideas to get you started.\nIf you’re looking to increase your wealth without having to work another job, you’re not alone. There are many forms of passive income that can help you earn extra money – and some can be highly lucrative. \n\nWhen a stream of income is passive, it needs little to no ongoing maintenance to keep it flowing. Unlike traditional employment, you’re not directly trading your time for money – making it ‘passive’ rather than ‘active’.\n\nBelow you’ll find some of the best options for earning passive income today.\n\n\n1. List your spare room on Airbnb\n\nListing your room on Airbnb is an excellent way to start earning passive money. Since you already own the space that you’re renting out, this doesn’t require any money upfront. Better yet, you are in control of the process, so you can list your space for rent only when it’s convenient for you.\n\nPlus, Airbnb is easy to sign-up with. Simply create an account as a host, and then fill in the details of how you want to host (you can set your prices, availability, and guest requirements). When your profile has been approved, it’s time to welcome your very first guest.\n\n\n2. Sell digital files online\n\nSelling digital files is a simple and easy way to make some online cash. Digital files are online documents (such as PDFs) that users purchase in order to download them. You don’t have to package or ship anything, and once you’ve created it and uploaded it to the right platform, your income is totally passive: customers simply pay and then download their file.\n\nThe first and most important step is to make sure you have high-quality digital files to sell. Then, you can find the most appropriate place to upload. Etsy is great for wall art, graphics, as well as patterns for crafting. Meanwhile, Zazzle allows you to upload a design that can then be added by customers to t-shirts, mugs, and all sorts of merchandise, earning you a commission each time it’s used.',
      '3',
      DateTime.now(),
      Category.finance,
    ),
  ];

  List<Blog> get getAllBlogs {
    return [..._blogs];
  }

  Blog getblogByID(String id) {
    return _blogs.firstWhere((blog) {
      return blog.getID == id;
    });
  }
}

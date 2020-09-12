
10.times do |blog|
    Blog.create!(
        title: "My blog #{blog}",
        body: 'Contrary to popular belief, Lorem Ipsum is not simply
        random text. It has roots in a piece of classical Latin
        literature from 45 BC, making it over 2000 years old.
        Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia,
        looked up one of the more obscure Latin words, consectetur, 
        from a Lorem Ipsum passage, and going through the cites of the word in classical literature,
        discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of
        "de Finibus Bonorum et Malorum" (The Extremes of Good and Evil) by Cicero, written in 45 BC.
        This book is a treatise on the theory of ethics, very popular during the Renaissance.
        The first line of Lorem Ipsum, "Lorem ipsum dolor sit amet..",
        comes from a line in section 1.10.32.'
    )
end

puts "10 new blogs created"

5.times do |skill|
    Skill.create!(
        title: "Skill Number #{skill}",
        percentage_utilized: 15
    )
end

puts "5 new skills created"

9.times do |portfolio_item|
    Portfolio.create!(
        title: "portfolio title #{portfolio_item}",
        subtitle: "Great Item",
        body: 'Contrary to popular belief, Lorem Ipsum is not simply
        random text. It has roots in a piece of classical Latin
        literature from 45 BC, making it over 2000 years old.
        Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia,
        looked up one of the more obscure Latin words, consectetur, 
        from a Lorem Ipsum passage, and going through the cites of the word in classical literature,
        discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of
        "de Finibus Bonorum et Malorum" (The Extremes of Good and Evil) by Cicero, written in 45 BC.
        This book is a treatise on the theory of ethics, very popular during the Renaissance.
        The first line of Lorem Ipsum, "Lorem ipsum dolor sit amet..",
        comes from a line in section 1.10.32.',
        main_image: "https://via.placeholder.com/600x400",
        thumb_image: "https://via.placeholder.com/350x200"
    )
end

puts "9 porfolios added"
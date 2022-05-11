---
layout: archive
title: "Recent Publications"
permalink: /publications/
author_profile: true
author_googlescholar: https://scholar.google.com/citations?user=0Knul6gAAAAJ&hl=en

---

if author.googlescholar
  You can also find my articles on <u><a href="{{author.googlescholar}}">my Google Scholar profile</a>.</u>
endif

{% include base_path %}

for post in site.publications reversed
  include archive-single.html
endfor

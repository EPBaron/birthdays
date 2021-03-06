---
title       : Famous Birthday Finder
subtitle    : Born on this date
author      : Ephraim Baron
job         : Developing Data Products course
framework   : io2012        # {io2012, html5slides, shower, dzslides, ...}
highlighter : prettify      # {highlight.js, prettify, highlight}
logo        : birthday.jpg  # birthday image
hitheme     : tomorrow      # 
widgets     : [bootstrap, quiz]            # {mathjax, quiz, bootstrap}
mode        : selfcontained # {standalone, draft}
knit        : slidify::knit2slides
---

## Who Shares My Birthday?
My application attempts to answer the question:

*"Um, like, what famous people share my birthday?"*

![birthdays](assets/img/birthdays.png)

I know.  That's, like, *no way*, right?

Way!

---
 

## Sources of Data Awesomeness

I scoured the internet for sources of famous birthday information.  After an exhaustive 10-minute search, I found the following two sites:

[mydatamaster database](http://mydatamaster.com/free-downloads/)

[xemico database](http://www.xemico.com/adc/infocenter/bigdates/famousbdays.html)

The data was **awesome**

![explode](assets/img/head.jpg)

<audio controls>
    <src="assets/img/awesome.mp3">
</audio>

---
## Exploratory Data Analysis
Next I combined the data sets.  Here's the birthday distribution by month:


```r
bdays <- read.csv("assets/birthdays.csv", header=TRUE)
hist(bdays$Month, col="skyblue", xlab="Month", main="Birthdays per Month")
```

![plot of chunk unnamed-chunk-1](assets/fig/unnamed-chunk-1.png) 

Inexplicably, January was the most popular.  April is the cruelest month

--- &radio
## Future Work
I'm ready to take my birthday work to the next level.

I want to create a birthday database of every person, ever, living or dead.

What do you think?

1. Impossible
2. Pointless
3. _Best idea ever!_
4. WTF?

*** .hint
No haters allowed

*** .explanation
Happy birthday 2U!



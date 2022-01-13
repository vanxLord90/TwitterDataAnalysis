twitter_dataset<-read.csv("C:/Users/dasak/Downloads/two_years_twitter_dataset.csv")
twitter_user<-read.csv("C:/Users/dasak/Downloads/users.csv")
summary(twitter_user)

UNIQUE_TWEETS=twitter_user$unique_tweets
FOLLOWERS=twitter_user$followers_count

x<-vector()
y<-vector()

m<-mean(UNIQUE_TWEETS)
m2<-mean(FOLLOWERS)
uL<-length(UNIQUE_TWEETS)
i1=0
for(i in 1:uL-1){
  i=i1
  if(i+25<=i+m){
    x[i]=UNIQUE_TWEETS[i]
  }
}
uF<-length(FOLLOWERS)

for(b in 1:uL-1){
  b1=0
  if(b+25<=b+m2){
    y[b]=FOLLOWERS[i]
  }
}
#Q <- quantile(UNIQUE_TWEETS, probs=x, na.rm = FALSE)
#Q2<- quantile(UNIQUE_TWEETS, probs=x, na.rm = FALSE)

#plot(x,y)
plot(UNIQUE_TWEETS,FOLLOWERS)

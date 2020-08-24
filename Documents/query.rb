#################### Feeds #####################
#Get followings by user_id=2
F=User.find_by(id:1).followings
F.each do |following|
  #Get Author name
  i_id=following.id
  i_firstname=following.first_name
  i_lastname=following.last_name
  i_avatar=following.avatar_url
  # Get Photo description and title and publishDate of lastest pic
  p=following.photos.last
  p_id=p.id
  p_title=p.title
  p_url=p.url
  p_description=p.description
  p_publishDate=p.publishDate
  # Get Album description and title and publishDate of lastest album
  a=following.albums.last
  a_id=a.id
  a_title=a.title
  a_description=a.description
  a_publishDate=a.publishDate
end
###################### VIEW POST CONTENT ###############################.
m=User.find_by(id:2)
#query image
m=m.photos.find_by(id:3)
m_title=m.title
m_url=m.url
m_description=m.description

######################### DISCOVERY ####################################
F=User.order("RAND()").first(10)
F.each do |t|
  #Get Author name
  i_id=t.id
  i_firstname=t.first_name
  i_lastname=t.last_name
  i_avatar=t.avatar_url
  # Get Photo description and title and publishDate of lastest pic
  p=t.photos.last
  p_id=p.id
  p_title=p.title
  p_url=p.url
  p_description=p.description
  p_publishDate=p.publishDate
  # Get Album description and title and publishDate of lastest album
  a=t.albums.last
  a_id=a.id
  a_title=a.title
  a_description=a.description
  a_publishDate=a.publishDate
end
############################ PUBLIC PROFILE ###############################
first_name=User.find_by(id:2).first_name
last_name=User.find_by(id:2).last_name
avatar=User.find_by(id:2).avatar_url
#get number of photos
number_photo=User.find_by(id:2).photos.count
# get number of albums
number_album=User.find_by(id:2).photos.count
#get number of followers
number_follower=User.find_by(id:2).followers.count
#get number of followings
number_followings=User.find_by(id:2).followings.count
############################ PUBLIC PHOTO TAB ###############################
#get all photos of user 2
m=User.find_by(id:2).photos
m.each do |t|
  m_id = t.id
  m_title= t.title
  m_url=t.url
  m_description= t.description
end
############################ PUBLIC ALBUM TAB ###############################
#get all albums of user 2
m=User.find_by(id:2).albums
m.each do |t|
  m_id = t.id
  m_title= t.title
  m_description= t.description
  m_count=t.photos.count
end
############################ PUBLIC FOLLOWINGS TAB ###############################
F=User.find_by(id:2).followings
F.each do |following|
  #Get Author name
  i_id=following.id
  i_firstname=following.first_name
  i_lastname=following.last_name
  i_avatar=following.avatar_url
  # Get Photo number
  p_number=following.photos.count
  # Get Album number
  a_number=following.albums.count
end
############################ PUBLIC FOLLOWINGS TAB ###############################
F=User.find_by(id:2).followers
F.each do |follower|
  #Get Author name
  i_id=follower.id
  i_firstname=follower.first_name
  i_lastname=follower.last_name
  i_avatar=follower.avatar_url

  # Get Photo number
  p_number=follower.photos.count
  # Get Album number
  a_number=follower.albums.count
end
############################ My PROFILE ###############################
first_name=User.find_by(id:1).first_name
last_name=User.find_by(id:1).last_name
avatar=User.find_by(id:1).avatar_url
#get number of photos
number_photo=User.find_by(id:1).photos.count
# get number of albums
number_album=User.find_by(id:1).photos.count
#get number of followers
number_follower=User.find_by(id:1).followers.count
#get number of followings
number_followings=User.find_by(id:1).followings.count
############################ MY PHOTO TAB ###############################
#get all photos of user 1
m=User.find_by(id:1).photos
m.each do |t|
  m_id = t.id
  m_title= t.title
  m_url=t.url
  m_description= t.description
end
############################ MY ALBUM TAB ###############################
#get all albums of user 1
m=User.find_by(id:1).albums
m.each do |t|
  m_id = t.id
  m_title= t.title
  m_description= t.description
  m_count=t.photos.count
end
############################ MY FOLLOWINGS TAB ###############################
F=User.find_by(id:1).followings
F.each do |following|
  #Get Author name
  i_id=following.id
  i_firstname=following.first_name
  i_lastname=following.last_name
  i_avatar=following.avatar_url
  # Get Photo number
  p_number=following.photos.count
  # Get Album number
  a_number=following.albums.count
end
############################ MY FOLLOWINGS TAB ###############################
F=User.find_by(id:1).followers
F.each do |follower|
  #Get Author name
  i_id=follower.id
  i_firstname=follower.first_name
  i_lastname=follower.last_name
  i_avatar=follower.avatar_url

  # Get Photo number
  p_number=follower.photos.count
  # Get Album number
  a_number=follower.albums.count
end

posts = {}
posts._posts = {}

posts.getAll = function()
  return posts._posts
end

posts.addPost = function(title,content)
  posts._posts[#posts._posts+1] = {
    title = title,
    content = content
  }
end

-- ADD POSTS HERE --

posts.addPost("This is a test post",[[
This is a test post. test. test. test.
Lorem ipsum dolor sit amet.
]])

return posts

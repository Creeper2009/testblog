etlua   = require "etlua"
gitcmd  = "git add * && git commit -m \"Update posts\" && git push"
posts   = require "posts"

blogName = "Creeper2009's Blog"

allposts = posts.getAll()

-- compile the etlua

etindex = io.open("index.etlua","rb"):read("*all")
etcomp  = etlua.compile(etindex)

io.open("index.html","w"):write(etcomp({
  blogName = blogName,
  posts = {allposts}
}))

os.execute(gitcmd)

etlua   = require "etlua"
gitcmd  = "git add * && git commit -m \"Update posts\" && git push"
posts   = require "posts"

blogName = "Creeper2009's Blog"

allposts = posts.getAll()

-- compile the etlua

etindex = io.open("index.etlua","rb")
print(etindex:read("*all"))
etcomp  = etlua.compile(etindex:read("*all"))
etindex:close()
a = etcomp({blogName=blogName,posts={allposts}})
print(a)

v=io.open("index.html","w")
v:write(a)
v:close()

os.execute(gitcmd)

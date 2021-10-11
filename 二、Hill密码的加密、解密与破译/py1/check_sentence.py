fo = open("ans_4.txt", "r")
words = fo.read()
words = words.split("\n")
ffo= open("tmp.txt","w")
ffo.write(str(words))
ffo.close()
#words are the words that often come out in the English sentences
fo.close()
fo = open("translate1.txt", "r")
ffo= open("ans1.txt","w")
#fffo=open("rest.txt","w")
s = fo.read()
s = s.split("\n")
#print(s)
#print(words)
ans = []
for i in s:
    for j in words:
        if j in i:
            ans.extend(i)
            #fffo.write(j+"  in  "+i+"\n")
            print(j+"  in  "+i)
            ffo.write(i+"\n")
            break
ffo.close()
fo.close()
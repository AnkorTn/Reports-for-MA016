fo = open("foo.txt", "r")
s = fo.read()
#print("读取的字符串是 : ", s)
ans = s.split(" ")
#print(ans)
ans = [i[0:i.find("\n")] for i in ans]
ans = [i.upper() for i in ans]
ans = [i for i in ans if len(i) > 4]
#print(ans)
# 关闭打开的文件
fo.close()
fo = open("ans_5.txt","w")
for i in ans:
    fo.write(i+"\n")
fo.close()